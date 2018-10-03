//
// Created by faunus on 9/11/17.
//
#include <fstream>
#include "halfEdgeMeshes.h"
#include <string.h>
#include <GL/glut.h>
#include <iostream>


halfEdgeMeshes::halfEdgeMeshes() {}

halfEdgeMeshes::~halfEdgeMeshes() {}


int halfEdgeMeshes::objReader(const char* path)
{
    FILE* file = fopen(path,"r");
    if (file == NULL){return 0;}


    bool vtCheck, vnCheck, firstFace;

    int res;
    int match;
    do
    {
        char line[128];
        res = fscanf(file, "%s", line);
        if (strcmp(line, "v") == 0)
        {
            Vert *vert = new Vert();
            fscanf(file, "%f %f %f\n", &vert->x, &vert->y, &vert->z);
            vertex.push_back(vert);
        } else if (strcmp(line, "vt") == 0)
        {
            Vert *vert = new Vert();
            fscanf(file, "%f %f %f\n", &vert->x, &vert->y, &vert->z);
            vt.push_back(vert);
        }else if (strcmp(line, "vn") == 0)
        {
            Vert *vert = new Vert();
            fscanf(file, "%f %f %f\n", &vert->x, &vert->y, &vert->z);
            vn.push_back(vert);
        } else if (strcmp(line, "f") == 0)
        {
            if (!firstFace){
                vtCheck = (vt.size() > 0);
                vnCheck = (vn.size() > 0);
                firstFace = true;
            }
            if (vtCheck && vnCheck) {
                int temp[12];
                match = fscanf(file, "%d%*[/]%d%*[/]%d %d%*[/]%d%*[/]%d %d%*[/]%d%*[/]%d %d%*[/]%d%*[/]%d\n", &temp[0], &temp[1], &temp[2], &temp[3], &temp[4], &temp[5], &temp[6], &temp[7], &temp[8], &temp[9], &temp[10], &temp[11]);
                switch (match)
                {
                    case 12:
                    {
                        parsing(4, 1, temp, vertex, vt, vn);
                        break;
                    }
                    case 9:
                    {
                        parsing(3, 1, temp, vertex, vt, vn);
                        break;
                    }
                }
            } else if (vtCheck)
            {
                int temp[8];
                match = fscanf(file, "%d%*[/]%d %d%*[/]%d %d%*[/]%d %d%*[/]%d\n", &temp[0], &temp[1], &temp[2], &temp[3], &temp[4], &temp[5], &temp[6], &temp[7]);
                switch (match) {
                    case 8:
                    {
                        parsing(4, 2, temp, vertex, vt, vn);
                        break;
                    }
                    case 6:
                    {
                        parsing(3, 2, temp, vertex, vt, vn);
                        break;
                    }
                }
            } else if (vnCheck)
            {
                int temp[8];
                match = fscanf(file, "%d%*[/]%d %d%*[/]%d %d%*[/]%d %d%*[/]%d\n", &temp[0], &temp[1], &temp[2], &temp[3], &temp[4], &temp[5], &temp[6], &temp[7]);
                switch (match)
                {
                    case 8:
                    {
                        parsing(4, 3, temp, vertex, vt, vn);
                        break;
                    }
                    case 6:
                    {
                        parsing(3, 3, temp, vertex, vt, vn);
                        break;
                    }
                }
            } else
            {
                int temp[4];
                match = fscanf(file, "%d %d %d %d\n", &temp[0], &temp[1], &temp[2], &temp[3]);
                switch (match)
                {
                    case 4:
                    {
                        parsing(4, 4, temp, vertex, vt, vn);
                        break;
                    }
                    case 3:
                    {
                        parsing(3, 4, temp, vertex, vt, vn);
                        break;
                    }
                }
                /*halfEdge *edge0 = new halfEdge(); halfEdge *edge1 = new halfEdge();halfEdge *edge2 = new halfEdge();halfEdge *edge3 = new halfEdge();
                Face *face = new Face();

                int x, y, z, w;
                fscanf(file, "%d %d %d %d\n", &x, &y, &z, &w);
                edge0->vert = vertex[x - 1];
                edge1->vert = vertex[y - 1];
                edge2->vert = vertex[z - 1];
                edge3->vert = vertex[z - 1];

                edge0->face = face; edge1->face = face; edge2->face = face; edge3->face = face;
                face->edge = edge0;

                edge0->nextEdge = edge1;
                edge1->nextEdge = edge2;
                edge2->nextEdge = edge3;
                edge3->nextEdge = edge0;

                faces.push_back(face);*/
            }
        }
    } while (res != EOF);
    return 1;
}
inline void halfEdgeMeshes::parsing(int size, int match, int* arg, std::vector<Vert*> vert, std::vector<Vert*> vt, std::vector<Vert*> vn)
{
    switch (match) { // both vt and vn
        case 1: {
            halfEdge* edges = new halfEdge[size];
            Face* face = new Face;
            for (int i = 0; i < size; i++)
            {
                edges[i].vert = vert[arg[i * 3] - 1];
                edges[i].text = vt[arg[i * 3 + 1] - 1];
                edges[i].norm = vn[arg[i * 3 + 2] - 1];
                edges[i].face = face;
                edges[i].nextEdge = &edges[((i + 1) % size)];
                edges[i].prevEdge = &edges[((i + size - 1) % size)];

                edges[i].vert->edgesHead.push_back(edges[i].prevEdge);
                halfEdges.push_back(&edges[i]);
            }
            face->edge = &edges[0];
            face->points = size;
            faces.push_back(face);
            break;
        } case 2: { // vt but not vn
            halfEdge *edges = new halfEdge[size];
            Face *face = new Face;
            for (int i = 0; i < size; i++) {
                edges[i].vert = vert[arg[i * 2] - 1];
                edges[i].text = vt[arg[i * 2 + 1] - 1];
                edges[i].norm = NULL;
                edges[i].face = face;
                edges[i].nextEdge = &edges[((i + 1) % size)];
                edges[i].prevEdge = &edges[((i + size - 1) % size)];

                edges[i].vert->edgesHead.push_back(edges[i].prevEdge);
                halfEdges.push_back(&edges[i]);
            }
            face->edge = &edges[0];
            face->points = size;
            faces.push_back(face);
            break;
        } case 3: { // vn but not vt
            halfEdge *edges = new halfEdge[size];
            Face *face = new Face;
            for (int i = 0; i < size; i++) {
                edges[i].vert = vert[arg[i * 2] - 1];
                edges[i].text = NULL;
                edges[i].norm = vn[arg[i * 2 + 1] - 1];
                edges[i].face = face;
                edges[i].nextEdge = &edges[((i + 1) % size)];
                edges[i].prevEdge = &edges[((i + size - 1) % size)];

                edges[i].vert->edgesHead.push_back(edges[i].prevEdge);
                halfEdges.push_back(&edges[i]);
            }
            face->edge = &edges[0];
            face->points = size;
            faces.push_back(face);
            break;
        } case 4: { // none of vt or vn
            halfEdge* edges = new halfEdge[size];
            Face* face = new Face;
            for (int i = 0; i < size; i++)
            {
                edges[i].vert = vert[arg[i] - 1];
                edges[i].text = NULL;
                edges[i].norm = NULL;
                edges[i].face = face;
                edges[i].nextEdge = &edges[((i + 1) % size)];
                edges[i].prevEdge = &edges[((i + size - 1) % size)];

                edges[i].vert->edgesHead.push_back(edges[i].prevEdge);
                halfEdges.push_back(&edges[i]);
            }
            face->edge = &edges[0];
            face->points = size;
            faces.push_back(face);
            break;
        }
    }
}

void halfEdgeMeshes::buildEdgePairSlowly()
{
    for (int i = 0; i < halfEdges.size(); i++)
    {
        if (halfEdges[i]->pair == NULL)
        {
            for (int c = 0; c < halfEdges.size(); c++)
            {
                if (halfEdges[i]->vert == halfEdges[c]->nextEdge->vert && halfEdges[i]->nextEdge->vert == halfEdges[c]->vert)
                {
                    halfEdges[i]->pair = halfEdges[c];
                    halfEdges[c]->pair = halfEdges[i];
                    break;
                }
            }
        }
    }
}
void halfEdgeMeshes::buildEdgePair()
{
    for (int i = 0; i < halfEdges.size(); i++)
    {
        if (halfEdges[i]->pair == NULL)
        {
            for (int c= 0; c < halfEdges[i]->vert->edgesHead.size(); c++ )
            {
                if (halfEdges[i]->vert == halfEdges[i]->vert->edgesHead[c]->nextEdge->vert && halfEdges[i]->nextEdge->vert == halfEdges[i]->vert->edgesHead[c]->vert)
                {
                    halfEdges[i]->pair = halfEdges[i]->vert->edgesHead[c];
                    halfEdges[i]->vert->edgesHead[c] = halfEdges[i];
                    break;
                }
            }
        }
    }
}

void halfEdgeMeshes::drawMesh()
{
    float scale = 0.4F;
    for (int i = 0; i < faces.size(); i++) {
        halfEdge* current = faces[i]->edge;
        do
        {
            glColor3f(1, 1, 1);
            glBegin(GL_LINES);
            glVertex3f(current->vert->x*scale, current->vert->y*scale,current->vert->z*scale);
            glVertex3f(current->nextEdge->vert->x*scale,current->nextEdge->vert->y*scale,current->nextEdge->vert->z*scale);
            glEnd();
            current = current->nextEdge;
        }while (current->nextEdge != faces[i]->edge->nextEdge);

    }

}


void halfEdgeMeshes::subdivision()
{
    std::vector<Vert*> newVertex;
    std::vector<Vert*> vertexPoints;
    std::vector<Face*> newFaces;
    newFaces.reserve(faces.size()*4);
    std::vector<halfEdge*> newHalfEdges;

    Vert* facePoints = new Vert[faces.size()];
    halfEdge* current;

    float dev;

    for (int i = 0; i< faces.size(); i++)                   /// faces loop
    {
        current = faces[i]->edge;
        do
        {
            facePoints[i].x += current->vert->x;
            facePoints[i].y += current->vert->y;
            facePoints[i].z += current->vert->z;
            current = current->nextEdge;
        }while (current->nextEdge != faces[i]->edge->nextEdge);

        dev = 1.0F / faces[i]->points;
        facePoints[i].x = facePoints[i].x * dev;
        facePoints[i].y = facePoints[i].y * dev;
        facePoints[i].z = facePoints[i].z * dev;

        faces[i]->newVert = &facePoints[i];                  /// To be able to find that vert easy

        newVertex.push_back(&facePoints[i]);
    }


    long halfEdgesSize = halfEdges.size();
    for (int i = 0; i< halfEdgesSize; i++)           /// Edge loop
    {
        if (halfEdges[i]->newVert == NULL) {
            Vert *edgePoint = new Vert;
            edgePoint->x = (halfEdges[i]->vert->x + halfEdges[i]->pair->vert->x +
                            halfEdges[i]->face->newVert->x +
                            halfEdges[i]->pair->face->newVert->x) * 0.25F;

            edgePoint->y = (halfEdges[i]->vert->y + halfEdges[i]->pair->vert->y +
                            halfEdges[i]->face->newVert->y +
                            halfEdges[i]->pair->face->newVert->y) * 0.25F;

            edgePoint->z = (halfEdges[i]->vert->z + halfEdges[i]->pair->vert->z +
                            halfEdges[i]->face->newVert->z +
                            halfEdges[i]->pair->face->newVert->z) * 0.25F;

            halfEdges[i]->newVert = edgePoint;
            halfEdges[i]->pair->newVert = edgePoint;

            newVertex.push_back(edgePoint);
        }
    }

    std::vector<halfEdge*> edgePointers;

    Vert avFacePoint;
    Vert avEdgePoint;
    long vertexSize = vertex.size();
    for (int i = 0; i<vertexSize; i++)
    {
        for (int j = 0; j<vertex[i]->edgesHead.size(); j++)
        {
            edgePointers.push_back(vertex[i]->edgesHead[j]);

            avFacePoint.x += vertex[i]->edgesHead[j]->nextEdge->face->newVert->x;
            avFacePoint.y += vertex[i]->edgesHead[j]->nextEdge->face->newVert->y;
            avFacePoint.z += vertex[i]->edgesHead[j]->nextEdge->face->newVert->z;

            avEdgePoint.x += (vertex[i]->edgesHead[j]->vert->x + vertex[i]->edgesHead[j]->pair->vert->x)*0.5F;
            avEdgePoint.y += (vertex[i]->edgesHead[j]->vert->y + vertex[i]->edgesHead[j]->pair->vert->y)*0.5F;
            avEdgePoint.z += (vertex[i]->edgesHead[j]->vert->z + vertex[i]->edgesHead[j]->pair->vert->z)*0.5F;

        }
        /*
        for (int j = 0; j<halfEdgesSize; j++)
        {
            if (halfEdges[j]->vert == vertex[i])
            {
                edgePointers.push_back(halfEdges[j]);

                avFacePoint.x += halfEdges[j]->face->newVert->x;
                avFacePoint.y += halfEdges[j]->face->newVert->y;
                avFacePoint.z += halfEdges[j]->face->newVert->z;

                avEdgePoint.x += (halfEdges[j]->vert->x + halfEdges[j]->pair->vert->x)*0.5F;
                avEdgePoint.y += (halfEdges[j]->vert->y + halfEdges[j]->pair->vert->y)*0.5F;
                avEdgePoint.z += (halfEdges[j]->vert->z + halfEdges[j]->pair->vert->z)*0.5F;

                for (int c = 0; c<vertex[i]->edgesHead.size(); c++){
                    if (halfEdges[j]->vert == vertex[i]->edgesHead[c]->vert)
                        std::cout << c << ": "<< vertex[i]->edgesHead.size() <<" Something \n";
                }
                std::cout << "next\n";
            }
        }*/
        long edgePointersSize = edgePointers.size();
        dev = 1.0F / edgePointersSize;
        avFacePoint.x = avFacePoint.x * dev;
        avFacePoint.y = avFacePoint.y * dev;
        avFacePoint.z = avFacePoint.z * dev;

        avEdgePoint.x = avEdgePoint.x * dev;
        avEdgePoint.y = avEdgePoint.y * dev;
        avEdgePoint.z = avEdgePoint.z * dev;



        Vert* newVert = new Vert;
        weightedAverageVertex(newVert, &avFacePoint, &avEdgePoint, vertex[i], edgePointersSize);
        avFacePoint.clear();
        avEdgePoint.clear();

        newVert->oldVertex = vertex[i];
        newVertex.push_back(newVert);

        for (int j = 0; j<edgePointersSize; j++)
        {
            Face* face = new Face;
            halfEdge* edge1 = new halfEdge;
            halfEdge* edge2 = new halfEdge;
            halfEdge* edge3 = new halfEdge;
            halfEdge* edge4 = new halfEdge;

            edge1->vert = newVert;
            newVert->edgesHead.push_back(edge4);
            edge1->face = face;
            edge1->nextEdge = edge2;
            edge1->prevEdge = edge4;
            newHalfEdges.push_back(edge1);

            edge2->vert = edgePointers[j]->newVert;
            edgePointers[j]->newVert->edgesHead.push_back(edge1);
            edge2->face = face;
            edge2->nextEdge = edge3;
            edge2->prevEdge = edge1;
            newHalfEdges.push_back(edge2);


            edge3->vert = edgePointers[j]->face->newVert;
            edgePointers[j]->face->newVert->edgesHead.push_back(edge2);
            edge3->face = face;
            edge3->nextEdge = edge4;
            edge3->prevEdge = edge2;
            newHalfEdges.push_back(edge3);
            /*if (lastEdge(edgePointers[j]->face->edge, newVert, edgePointers[j])){
                edge4->vert = current->newVert;
                current->newVert->edgesHead.push_back(edge3);
                edge4->face = face;
                edge4->nextEdge = edge1;
                newHalfEdges.push_back(edge4);

                face->points = 4;
            } else{

            }*/

            /** Look through the old face edges **/
            halfEdge* current = edgePointers[j]->face->edge;
            do
            {
                if (current->nextEdge->vert == newVert->oldVertex)
                    break;
                current = current->nextEdge;
            } while (current != edgePointers[j]->face->edge);

            edge4->vert = current->newVert;
            current->newVert->edgesHead.push_back(edge3);
            edge4->face = face;
            edge4->nextEdge = edge1;
            edge4->prevEdge = edge3;
            newHalfEdges.push_back(edge4);


            face->points = 4;
            face->edge = edge1;
            newFaces.push_back(face);
        }
        edgePointers.clear();

    }
    long size = faces.size();
    for(int i = 0; i < size; i++){ delete faces[i]; }
    faces.clear();

    vertex.clear();

    halfEdges.clear();

    faces = newFaces;
    vertex = newVertex;
    halfEdges = newHalfEdges;
}

Vert *halfEdgeMeshes::weightedAverageVertex(Vert* temp, const Vert *Q, const Vert *R, const Vert *S, const int n)
{
    temp->x = Q->x/n + (2*R->x)/n + (S->x*(n-3))/n;
    temp->y = Q->y/n + (2*R->y)/n + (S->y*(n-3))/n;
    temp->z = Q->z/n + (2*R->z)/n + (S->z*(n-3))/n;
}


