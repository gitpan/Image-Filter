gdImagePtr newFromJpeg (char *filename);
gdImagePtr newFromPng (char *filename);
gdImagePtr newFromGd (char *filename);
gdImagePtr newFromGd2 (char *filename);
void Png (gdImagePtr imageptr, char *filename);
void Jpeg (gdImagePtr imageptr, char *filename, int quality);
void Gd (gdImagePtr imageptr, char *filename);
void Gd2 (gdImagePtr imageptr, char *filename);
void Destroy(gdImagePtr imageptr);