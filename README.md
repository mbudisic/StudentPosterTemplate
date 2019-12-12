  - `paper/` contains all the LaTeX files.
  - `code/` should contain MATLAB, Python, etc. code needed to regenerate images.

Feel free to add other (sub)folders as needed, but don't go too wild.

Do not commit large binary (non-text) files to the repository. Some images are OK, but limit yourself to images that are actually used in the paper. 
The repository should mostly contain text files (`.tex`, `.m`, `.bib`, etc.)

`.gitignore` file specifies what files will not be added by `git` automatically. This allows the intermediate (by)products of LaTeX compilation, temporary files, etc. to be left in your local directory and never committed online.

Do not add `manuscript.pdf` (main paper file) to the repository. Each editor should be able to compile the full document on their own.

**Please make an effort to debug your `.tex` file before pushing changes to the repository.**
