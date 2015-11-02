__author__ = 'jmagady'


class Point:
    def __init__(self, x, y):
        self.x = int(x)
        self.y = int(y)

    def __str__(self):
        print "({0}, {1})".format(self.x, self.y)


class Rectangle:
    def __init__(self, points):
        self.bottom = min([point.y for point in points])
        self.top = max([point.y for point in points])
        self.left = min([point.x for point in points])
        self.right = max([point.x for point in points])
        self.width = self.right - self.left
        self.height = self.top - self.bottom
        self.area = self.width * self.height

    def contains(self, pt):
        """Check if point is in this rectangle"""
        return (self.left <= pt.x <= self.right and
                self.top >= pt.y >= self.bottom)

    def overlap(self, rec):
        """Find the Overlap"""
        top = min(self.top, rec.top)
        bottom = max(self.bottom, rec.bottom)
        right = min(self.right, rec.right)
        left = max(self.left, rec.left)
        height = int(top) - int(bottom)
        width = int(right) - int(left)
        return height, width if height*width > 0 else None


def convert(str):
    """Converts string of cords to a list of Tuples"""
    cords = str[0].replace("(", "").replace(")", "")
    cordlist = []
    lenstr = len(cords.split(",")) - 1
    for i in range(lenstr):
        if i + len(cordlist) + 1 > lenstr:
            continue
        cordlist.append((int(cords.split(",")[i+len(cordlist)]), int(cords.split(",")[i+len(cordlist)+1])))
    pointlist = []
    for cord in cordlist:
        pointlist.append(Point(int(cord[0]), int(cord[1])))
    return pointlist


def OverlappingRectangles(strArr):
    points = convert(strArr)
    rec1 = Rectangle(points[:4])
    rec2 = Rectangle(points[4:])
    height, width = rec1.overlap(rec2)
    if height:
        return int(rec1.width / width)*int(rec1.height / height)
    else:
        return 0

# keep this function call here
# to see how to enter arguments in Python scroll down
print OverlappingRectangles(raw_input())  # This is required

#print OverlappingRectangles(["(0,0),(0,-2),(3,0),(3,-2),(2,-2),(3,-2),(2,20),(3,20)"])
#print OverlappingRectangles(["(0,0),(2,2),(2,0),(0,2),(1,0),(1,2),(6,0),(6,2)"])
#print OverlappingRectangles(["(0,0),(0,-2),(3,0),(3,-2),(2,-1),(3,-1),(2,3),(3,3)"])
#print OverlappingRectangles(["(0,0),(0,1),(1,1),(1,0),(2,0),(2,1),(3,0),(3,1)"])
#print OverlappingRectangles(["(5,0),(-2,0),(5,-1),(-2,-1),(3,-1),(5,-1),(3,56),(5,56)"])
