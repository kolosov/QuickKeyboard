#ifndef BUTTONITEM_H_VNF1QLCU
#define BUTTONITEM_H_VNF1QLCU

#include <QQuickItem>
#include <QStringList>

class ButtonItem: public QQuickItem
{
Q_OBJECT
Q_PROPERTY(bool active READ isActive WRITE setActive NOTIFY activeChanged DESIGNABLE false)
Q_PROPERTY(bool modifier MEMBER m_modifier READ isModifier NOTIFY modifierChanged DESIGNABLE false)
Q_PROPERTY(QString label MEMBER m_label READ label NOTIFY labelChanged)
Q_PROPERTY(QStringList symbols MEMBER m_symbols READ symbols NOTIFY symbolsChanged)
Q_PROPERTY(int currentSymbolIndex MEMBER m_currentSymbolIndex WRITE setCurrentSymbolIndex NOTIFY currentSymbolIndexChanged)

// position
Q_PROPERTY(int col MEMBER m_col NOTIFY colChanged)
Q_PROPERTY(int row MEMBER m_row NOTIFY rowChanged)
Q_PROPERTY(int colSpan MEMBER m_colSpan NOTIFY colSpanChanged)
Q_PROPERTY(int rowSpan MEMBER m_rowSpan NOTIFY rowSpanChanged)
public:
	explicit ButtonItem(QQuickItem *parent = 0);
	~ButtonItem();

	bool isActive() const { return m_active; };
	bool isModifier() const { return m_modifier; };
	QString label() const { return m_label; };
	QStringList symbols() const { return m_symbols; };

	void setActive(bool active);
	void setCurrentSymbolIndex(int currentSymbolIndex);

signals:
	void activeChanged(bool is_active);
	void modifierChanged(bool is_modifier);
	void labelChanged(const QString &label);
	void symbolsChanged(const QStringList &symbols);

	void colChanged(int col);
	void rowChanged(int row);
	void colSpanChanged(int colSpan);
	void rowSpanChanged(int rowSpan);

	void currentSymbolIndexChanged(int index);
	void triggered();
	void symbolTriggered(const QString &symbol);

private slots:
	void onSymbolsChanged();
	void onTriggered();

private:
	bool m_active;
	bool m_modifier;
	QString m_label;
	QStringList m_symbols;
	int m_col;
	int m_row;
	int m_colSpan;
	int m_rowSpan;
	int m_currentSymbolIndex;
}; /* -----  end of class ButtonItem  ----- */

#endif /* end of include guard: BUTTONITEM_H_VNF1QLCU */

