Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 975A23A3F3
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 07:37:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78DD486254;
	Sun,  9 Jun 2019 05:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zwHCbUKEJB33; Sun,  9 Jun 2019 05:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD93086274;
	Sun,  9 Jun 2019 05:37:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB05A1BF423
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 05:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E5FF98598E
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 05:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o8O4_AxIpJRQ for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 05:37:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 68A028594B
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 05:37:47 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id bi6so1954503plb.12
 for <devel@driverdev.osuosl.org>; Sat, 08 Jun 2019 22:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+QmFFtwzYvOqX8rE4J9oMMueMclohVG5ztZbavEVIvY=;
 b=pVKqLpUcBQbuFjOPoFDW9DvZwqlmCeicF4D8kRjzDI8sz1x1dS/1gxsVHEXV1aaOec
 LQ48OtzS3wtFn0SlrBqixahVqCcplI1Xk1g30rr9eLUQFHqTGFDJO3a0aZyK+9G8BZb5
 1XIZKUwGVZ6TtdFURmSSBRi99LQqvOWA51viAV7XcsSFjRtdP/jUPkU5nSL03nhMlrJt
 HPBGcfCoQ58m4wR6DnGmqert7JM9CmOeXo0GnCvIzeoi4f+0SzLSNdNFgdCt88AJHa3R
 j1bQOxKvbzmRCk6gr0lllbVlRxH+88MDA0De3sh8fnYH7+AzdiSmbCkcbOeSBKtEQh74
 ppvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+QmFFtwzYvOqX8rE4J9oMMueMclohVG5ztZbavEVIvY=;
 b=d/uhD+6t4Q00+x0zS2N9izJZ6byujhGD9BvFgdy/VS+N56E/SEuWtyYKWV9+LBvJQZ
 pzmvQdG70N3tmvYwiG5kwUhkU00LrePIAIkCZ+Fg9wxbIUtDYyNeomlbi1c8Wap7i0Zq
 RfXLJEr7nj8hoUkVUCt3uY3AMfMwywXY8RaV5FE1Y4d609gm794nXAr2Y/iLZcBc+a3Y
 bHQnpZhrqO3GTR/yieALK87oIsgq4XsD4AF6SSlwo0cDLQSIXSg+5MjZPRz3bkDBmwFv
 NTz6/r6MoGzHovyTs9ORLe46vHZUqz9694kDy8fuVvUeWJ4bTJ0atw+4bN9sbuWHmj7h
 8i4g==
X-Gm-Message-State: APjAAAVpPb1f2lCWGb+kyhwuz5hHVPPs3K9j1j0HxWS17tR1U138Wg/m
 A9KEmgSlu0mUHDznCrfVr50=
X-Google-Smtp-Source: APXvYqwS/QT7pzWb9tSjsBsHlHkN21ha7wCJ7VS5WQdqtuh22Kpwk4OsR11ZHr9Mt1DXkoFczwHfKw==
X-Received: by 2002:a17:902:4481:: with SMTP id
 l1mr65412216pld.121.1560058666983; 
 Sat, 08 Jun 2019 22:37:46 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id k16sm6486953pfa.87.2019.06.08.22.37.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 22:37:46 -0700 (PDT)
Date: Sun, 9 Jun 2019 11:07:41 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Hans de Goede <hdegoede@redhat.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: fix indentation issues
Message-ID: <20190609053741.GA12637@hari-Inspiron-1545>
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

fix below issues reported by checkpatch

CHECK: Please don't use multiple blank lines
WARNING: space prohibited between function name and open parenthesis '('
+void _rtw_open_pktfile (_pkt *pktptr, struct pkt_file *pfile)
WARNING: space prohibited before semicolon
WARNING: space prohibited between function name and open parenthesis '('
CHECK: spaces preferred around that '-' (ctx:VxV)
CHECK: Comparison to NULL could be written "!pxmitbuf->pallocated_buf"
CHECK: spaces preferred around that '*' (ctx:VxV)
CHECK: spaces preferred around that '/' (ctx:VxV)
WARNING: Missing a blank line after declarations
WARNING: braces {} are not necessary for single statement blocks
CHECK: spaces preferred around that '/' (ctx:VxV)
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index 4e4e565..39abfaf 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -9,22 +9,21 @@
 #include <drv_types.h>
 #include <rtw_debug.h>
 
-
 uint rtw_remainder_len(struct pkt_file *pfile)
 {
 	return (pfile->buf_len - ((SIZE_PTR)(pfile->cur_addr) - (SIZE_PTR)(pfile->buf_start)));
 }
 
-void _rtw_open_pktfile (_pkt *pktptr, struct pkt_file *pfile)
+void _rtw_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)
 {
 	pfile->pkt = pktptr;
 	pfile->cur_addr = pfile->buf_start = pktptr->data;
 	pfile->pkt_len = pfile->buf_len = pktptr->len;
 
-	pfile->cur_buffer = pfile->buf_start ;
+	pfile->cur_buffer = pfile->buf_start;
 }
 
-uint _rtw_pktfile_read (struct pkt_file *pfile, u8 *rmem, uint rlen)
+uint _rtw_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen)
 {
 	uint	len = 0;
 
@@ -32,7 +31,7 @@ uint _rtw_pktfile_read (struct pkt_file *pfile, u8 *rmem, uint rlen)
 	len = (rlen > len) ? len : rlen;
 
 	if (rmem)
-		skb_copy_bits(pfile->pkt, pfile->buf_len-pfile->pkt_len, rmem, len);
+		skb_copy_bits(pfile->pkt, pfile->buf_len - pfile->pkt_len, rmem, len);
 
 	pfile->cur_addr += len;
 	pfile->pkt_len -= len;
@@ -50,7 +49,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
 {
 	if (alloc_sz > 0) {
 		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
-		if (pxmitbuf->pallocated_buf == NULL)
+		if (!pxmitbuf->pallocated_buf)
 			return _FAIL;
 
 		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
@@ -65,7 +64,7 @@ void rtw_os_xmit_resource_free(struct adapter *padapter, struct xmit_buf *pxmitb
 		kfree(pxmitbuf->pallocated_buf);
 }
 
-#define WMM_XMIT_THRESHOLD	(NR_XMITFRAME*2/5)
+#define WMM_XMIT_THRESHOLD	(NR_XMITFRAME * 2 / 5)
 
 void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
 {
@@ -148,13 +147,13 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 	/* free sta asoc_queue */
 	while (phead != plist) {
 		int stainfo_offset;
+
 		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
 
 		stainfo_offset = rtw_stainfo_offset(pstapriv, psta);
-		if (stainfo_offset_valid(stainfo_offset)) {
+		if (stainfo_offset_valid(stainfo_offset))
 			chk_alive_list[chk_alive_num++] = stainfo_offset;
-		}
 	}
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
 
@@ -229,9 +228,9 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 			#endif
 			)
 		&& padapter->registrypriv.wifi_spec == 0) {
-		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
+		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME / 4)) {
 			res = rtw_mlcst2unicst(padapter, pkt);
-			if (res == true)
+			if (res)
 				goto exit;
 		} else {
 			/* DBG_871X("Stop M2U(%d, %d)! ", pxmitpriv->free_xmitframe_cnt, pxmitpriv->free_xmitbuf_cnt); */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
