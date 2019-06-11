Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 688AD3C166
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 05:00:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBD7786BB9;
	Tue, 11 Jun 2019 03:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QyHvHz1ST5oS; Tue, 11 Jun 2019 03:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BA0386BAF;
	Tue, 11 Jun 2019 03:00:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B33B21BF40F
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 03:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFCFF20479
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 03:00:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JgWtY0bZ-Yu8 for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 03:00:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 331732000D
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 03:00:38 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id i2so4440120plt.1
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 20:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ouy9EuLfvfLxerqmfmzyViveD/DuvjNYljoQC00wHrM=;
 b=OD3PRm6YfoYvQMyBsgze784qL4eM8F81xSCLXGDKuqXYmG9CI8R/t+DbXu9uhn+M+j
 sMkXqcgxuEtU/GgLiYqDnafMam5pUvbRG262j2g18HdNeyP5Io9aj2p35GRsCatuDwlo
 UyvhnxYYi9Ik+vt1Q4N2jvlwnTnu6VoDE/7HS6iixjeM6b2sS0ZtSzQyE7OYYrmf0YS2
 SxdtsiuvQFF5WTJ3ASbJsOPnXRuhQYY6j70WPaaXTXlk8Oa4WIIklSo1/NfokvMJnnT6
 7hiry4IwJgOk8Bb3A57L0dQkoOmefNZMxLOllziYbGv0NUnUbvRQl8w/jdWWt0B8GTYh
 fE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ouy9EuLfvfLxerqmfmzyViveD/DuvjNYljoQC00wHrM=;
 b=Zak6coDDQtfxK5YBRntPrqtzrAtr/6cPWWYLKvdzgowM+v4UuNqRaN5th1531N5eP/
 sf8dzOncEEsq7RPxPXmUzvdrE4JSiHYyIRRsgNqxMTkLfbGzgEp7ilVl6kovAbgCT2Fi
 OLFUt06bgq2OCRJa5qJ1FHkQ8gkYuusVIU5uNbMfo62nwhr3J8M1iwqZXAK/G4uyhMFw
 N/JGLqj/z7E4WODVApae0Z3eV+xFA6I3/NBKePoYE+vdAbEZ60YMPwb3gbZoR9oWKl41
 U+9fks/XyUZU6rnUNCJSSql8sFV966m+WZ/NMleBXo/jzzvX+nF5m6ObYsf9KZxZ6ET8
 AKMQ==
X-Gm-Message-State: APjAAAWLRIvXb53kfZiQVYt6hae8ld6GMitY1ADBlcEq7G7BmGpFIA4y
 VM/l/ByELxO8B19GEmeaJrE=
X-Google-Smtp-Source: APXvYqzZODPLbDZ28YxI5+MYcO7zs2SV1rlUywwbGikuQrkJ76en3RQ9F1SyrgrJuqVJ6vM6cRJaDw==
X-Received: by 2002:a17:902:6b44:: with SMTP id
 g4mr58311493plt.35.1560222037807; 
 Mon, 10 Jun 2019 20:00:37 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id k16sm11827807pfa.87.2019.06.10.20.00.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 20:00:37 -0700 (PDT)
Date: Tue, 11 Jun 2019 08:30:33 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] rtl8723bs: os_dep: fix spaces preferred around unary
 operator
Message-ID: <20190611030033.GA26062@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CHECK: spaces preferred around that '|' (ctx:VxV)
CHECK: spaces preferred around that '|' (ctx:VxV)
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/rtw_proc.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
index d6862e8..16ada19 100644
--- a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
+++ b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
@@ -21,7 +21,7 @@ inline struct proc_dir_entry *rtw_proc_create_dir(const char *name, struct proc_
 {
 	struct proc_dir_entry *entry;
 
-	entry = proc_mkdir_data(name, S_IRUGO|S_IXUGO, parent, data);
+	entry = proc_mkdir_data(name, S_IRUGO | S_IXUGO, parent, data);
 
 	return entry;
 }
@@ -31,7 +31,7 @@ inline struct proc_dir_entry *rtw_proc_create_entry(const char *name, struct pro
 {
 	struct proc_dir_entry *entry;
 
-	entry = proc_create_data(name,  S_IFREG|S_IRUGO, parent, fops, data);
+	entry = proc_create_data(name,  S_IFREG | S_IRUGO, parent, fops, data);
 
 	return entry;
 }
@@ -90,7 +90,7 @@ static int rtw_drv_proc_open(struct inode *inode, struct file *file)
 {
 	/* struct net_device *dev = proc_get_parent_data(inode); */
 	ssize_t index = (ssize_t)PDE_DATA(inode);
-	const struct rtw_proc_hdl *hdl = drv_proc_hdls+index;
+	const struct rtw_proc_hdl *hdl = drv_proc_hdls + index;
 
 	return single_open(file, hdl->show, NULL);
 }
@@ -98,7 +98,7 @@ static int rtw_drv_proc_open(struct inode *inode, struct file *file)
 static ssize_t rtw_drv_proc_write(struct file *file, const char __user *buffer, size_t count, loff_t *pos)
 {
 	ssize_t index = (ssize_t)PDE_DATA(file_inode(file));
-	const struct rtw_proc_hdl *hdl = drv_proc_hdls+index;
+	const struct rtw_proc_hdl *hdl = drv_proc_hdls + index;
 	ssize_t (*write)(struct file *, const char __user *, size_t, loff_t *, void *) = hdl->write;
 
 	if (write)
@@ -207,7 +207,7 @@ static int proc_get_linked_info_dump(struct seq_file *m, void *v)
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 
 	if (padapter)
-		DBG_871X_SEL_NL(m, "linked_info_dump :%s\n", (padapter->bLinkInfoDump)?"enable":"disable");
+		DBG_871X_SEL_NL(m, "linked_info_dump :%s\n", (padapter->bLinkInfoDump) ? "enable" : "disable");
 
 	return 0;
 }
@@ -245,7 +245,7 @@ static int proc_get_rx_info(struct seq_file *m, void *v)
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
 	/* Counts of packets whose seq_num is less than preorder_ctrl->indicate_seq, Ex delay, retransmission, redundant packets and so on */
-	DBG_871X_SEL_NL(m,"Counts of Packets Whose Seq_Num Less Than Reorder Control Seq_Num: %llu\n", (unsigned long long)pdbgpriv->dbg_rx_ampdu_drop_count);
+	DBG_871X_SEL_NL(m, "Counts of Packets Whose Seq_Num Less Than Reorder Control Seq_Num: %llu\n", (unsigned long long)pdbgpriv->dbg_rx_ampdu_drop_count);
 	/* How many times the Rx Reorder Timer is triggered. */
 	DBG_871X_SEL_NL(m,"Rx Reorder Time-out Trigger Counts: %llu\n", (unsigned long long)pdbgpriv->dbg_rx_ampdu_forced_indicate_count);
 	/* Total counts of packets loss */
@@ -341,8 +341,8 @@ static int proc_get_cam_cache(struct seq_file *m, void *v)
 				, dvobj->cam_cache[i].ctrl
 				, MAC_ARG(dvobj->cam_cache[i].mac)
 				, KEY_ARG(dvobj->cam_cache[i].key)
-				, (dvobj->cam_cache[i].ctrl)&0x03
-				, security_type_str(((dvobj->cam_cache[i].ctrl)>>2)&0x07)
+				, (dvobj->cam_cache[i].ctrl) & 0x03
+				, security_type_str(((dvobj->cam_cache[i].ctrl) >> 2) & 0x07)
 				/*  ((dvobj->cam_cache[i].ctrl)>>5)&0x01 */
 				/*  ((dvobj->cam_cache[i].ctrl)>>6)&0x01 */
 				/*  ((dvobj->cam_cache[i].ctrl)>>8)&0x7f */
@@ -421,7 +421,7 @@ static const int adapter_proc_hdls_num = sizeof(adapter_proc_hdls) / sizeof(stru
 static int rtw_adapter_proc_open(struct inode *inode, struct file *file)
 {
 	ssize_t index = (ssize_t)PDE_DATA(inode);
-	const struct rtw_proc_hdl *hdl = adapter_proc_hdls+index;
+	const struct rtw_proc_hdl *hdl = adapter_proc_hdls + index;
 
 	return single_open(file, hdl->show, proc_get_parent_data(inode));
 }
@@ -429,7 +429,7 @@ static int rtw_adapter_proc_open(struct inode *inode, struct file *file)
 static ssize_t rtw_adapter_proc_write(struct file *file, const char __user *buffer, size_t count, loff_t *pos)
 {
 	ssize_t index = (ssize_t)PDE_DATA(file_inode(file));
-	const struct rtw_proc_hdl *hdl = adapter_proc_hdls+index;
+	const struct rtw_proc_hdl *hdl = adapter_proc_hdls + index;
 	ssize_t (*write)(struct file *, const char __user *, size_t, loff_t *, void *) = hdl->write;
 
 	if (write)
@@ -604,7 +604,7 @@ static const int odm_proc_hdls_num = sizeof(odm_proc_hdls) / sizeof(struct rtw_p
 static int rtw_odm_proc_open(struct inode *inode, struct file *file)
 {
 	ssize_t index = (ssize_t)PDE_DATA(inode);
-	const struct rtw_proc_hdl *hdl = odm_proc_hdls+index;
+	const struct rtw_proc_hdl *hdl = odm_proc_hdls + index;
 
 	return single_open(file, hdl->show, proc_get_parent_data(inode));
 }
@@ -612,7 +612,7 @@ static int rtw_odm_proc_open(struct inode *inode, struct file *file)
 static ssize_t rtw_odm_proc_write(struct file *file, const char __user *buffer, size_t count, loff_t *pos)
 {
 	ssize_t index = (ssize_t)PDE_DATA(file_inode(file));
-	const struct rtw_proc_hdl *hdl = odm_proc_hdls+index;
+	const struct rtw_proc_hdl *hdl = odm_proc_hdls + index;
 	ssize_t (*write)(struct file *, const char __user *, size_t, loff_t *, void *) = hdl->write;
 
 	if (write)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
