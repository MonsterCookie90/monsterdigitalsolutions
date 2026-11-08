from pathlib import Path
import re
p=Path(__file__).resolve().parent
files=list(p.glob('*.html'))
missing=[]
for f in files:
 s=f.read_text(encoding='utf-8')
 for target in re.findall(r'(?:href|src)=["\']([^"\']+)["\']',s):
  if target.startswith(('http:','https:','mailto:','tel:','#','data:','javascript:')):continue
  dest=target.split('#')[0].split('?')[0]
  if dest and not (p/dest).exists():missing.append((f.name,dest))
print('HTML-Seiten:',len(files),'Fehlende lokale Verweise:',len(missing))
for a,b in missing:print(a,'->',b)
