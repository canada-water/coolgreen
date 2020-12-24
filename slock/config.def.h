/* user and group to drop privileges to */
static const char *user  = "joel";
static const char *group = "wheel";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#274D4C",   /* during input */
	[FAILED] = "#36888f",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* time in seconds before the monitor shuts down */
static const int monitortime = 10;

/* enable blur */
//#define BLUR

/* set blur radius */
static const int blurRadius=5;

/* enable pixelation */
#define PIXELATION

/* set pixelation radius */
static const int pixelSize=5;

/* default message */
static const char * message = "coolgreen";

/* text color */
static const char * text_color = "#ffffff";

/* text size (must be a valid size) */
static const char * font_name = "6x10";
