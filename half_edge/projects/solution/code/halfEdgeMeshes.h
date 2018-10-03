//
// Created by faunus on 9/11/17.
//

#ifndef GSCEPT_LAB_ENV_HALFEDGE_H
#define GSCEPT_LAB_ENV_HALFEDGE_H

#include <vector>

struct Vert;
struct Face;

struct halfEdge
{
    Vert* vert;
    halfEdge* pair;
    Face* face;
    halfEdge* nextEdge;
    halfEdge* prevEdge;

    Vert* text; // vt
    Vert* norm; // vn


    Vert* newVert;

    void reset(){
        vert = NULL;
        pair = NULL;
        face = NULL;
        nextEdge = NULL;
        prevEdge = NULL;
        text = NULL,
        norm = NULL;
        newVert = NULL;
    }
    halfEdge(){
        vert = NULL;
        pair = NULL;
        face = NULL;
        nextEdge = NULL;
        prevEdge = NULL;
        text = NULL,
        norm = NULL;
        newVert = NULL;
    };
};
struct Vert
{
    float x,y,z;
    std::vector<halfEdge*> edgesHead;

    Vert* oldVertex;

    Vert() {
        x = 0; y = 0; z = 0;
        oldVertex == NULL;
    };
    void clear() {
        x = 0; y = 0; z = 0;
        oldVertex = NULL;
        edgesHead.clear();
    }
};
struct Face
{
    halfEdge* edge;
    int points;

    Vert* newVert;
    void reset(){
        edge = NULL;
        points = 0;
        newVert = 0;
    }
    Face() {
        edge = NULL;
        points = 0;
        newVert = 0;
    };
};



class halfEdgeMeshes
{
public:
    int objReader(const char* path);
    inline void parsing(int size, int match, int* arg, std::vector<Vert*> vert, std::vector<Vert*> vt, std::vector<Vert*> vn);
    void buildEdgePairSlowly();
    void buildEdgePair();
    void drawMesh();

    void subdivision();


    halfEdgeMeshes();
    ~halfEdgeMeshes();

private:
    Vert* weightedAverageVertex(Vert* temp,const Vert* face, const Vert* edge, const Vert* S, const int n);

    std::vector<Face*> faces;
    std::vector<Vert*> vertex, vt, vn;
    std::vector<halfEdge*> halfEdges;
};


#endif //GSCEPT_LAB_ENV_HALFEDGE_H
