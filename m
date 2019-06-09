Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DF53A58A
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 14:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E28CE87820;
	Sun,  9 Jun 2019 12:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NXmsnP-X+Fsi; Sun,  9 Jun 2019 12:51:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C0E2875B9;
	Sun,  9 Jun 2019 12:51:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49BB31BF41C
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 12:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 44A9685B8D
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 12:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LSlEd5TGcZKO for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 12:50:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1FCD85B8A
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 12:50:29 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 19so2888059pfa.4
 for <devel@driverdev.osuosl.org>; Sun, 09 Jun 2019 05:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=T5uT3cnHIyOhpdeq81GHrT25lmc9BY1BnvaqYtZbkNU=;
 b=Oin1Rpl1FkG6enOWjr2FCLw3CaZCmMpI1FjhO74RP0K0L8rBaAImloF3IZ4j8w4FEP
 MBq5b+JLYGwI2BenQC20tB5IN8uzapQzP8LJ031fzLRiSHQvwxIdEmoFeTG3lNRrQ31i
 ujL+OzGFpH11AAB1p3ruqABcgmECI1QDJ/gWe1z/By7M2Zi4gCP2zHWu33coDuyitDpo
 hJqzfdKEmC0WXLRjdz0taZHF4XHZiTs0oieRgsxp4x8sc1i/Nb2lyw6pdFlbXRc6UKtu
 4cmaEuDLCmqRCxGA1IvbpxknSGZN2t0BIwAItYvzusQ4XHiIh3Eh8U5Es+cdUhOkEq02
 AZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=T5uT3cnHIyOhpdeq81GHrT25lmc9BY1BnvaqYtZbkNU=;
 b=CFMIGqKFpsDGRVjQB7PAZ7jC4sI7+3ORH4ABI18xsIPhStd5ce6LDmwxSrSmbGPTqm
 3HOT3xnRm3cVhoVaupZQesC+gFc7KeQs+SmvZ8wnqEU/M5VDaUo8dY8myjTAzMGk8IgJ
 v3TE7KjLW0UsU8NVuUmqc79D8MtdjzSTT2miWH/SIrY0qXPAxbSGg2nBuTGczXtFAalp
 pipM3IScSRkuQiaw2OkVOG0416y0DDNqo8p9IUlEKXNQbtHrVb4CaIj+42EhrvblWnFG
 94C7q9kR7wvVqeFkGCHxVV+gStZypNrQWW02R1BK/OdVCfCPbYsHiSvF6DBFro3hOhSJ
 eOgg==
X-Gm-Message-State: APjAAAW9jtP6QSV/ISycQrkAIZ4tgZgd+pbsqCE7eeUtwT12RUPraPQx
 /MApV15DWmNE8r7gcW1r1qE=
X-Google-Smtp-Source: APXvYqxATSJZ1AbEWy9Yek5EDDUL0mcuATTKFKEvaeH3qS7QfYNS8u3aNwALA03o7jlCw26VyjAU2Q==
X-Received: by 2002:a63:514:: with SMTP id 20mr11296213pgf.272.1560084629346; 
 Sun, 09 Jun 2019 05:50:29 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id n32sm7297159pji.29.2019.06.09.05.50.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 05:50:28 -0700 (PDT)
Date: Sun, 9 Jun 2019 18:20:24 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Michael Straube <straube.linux@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] staging: rtl8723bs: provide spaces around unary operators
Message-ID: <20190609125024.GA4092@hari-Inspiron-1545>
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

This patch fixes below issues reported by checkpatch

CHECK: spaces preferred around that '-' (ctx:VxV)
+               skb_copy_bits(pfile->pkt, pfile->buf_len-pfile->pkt_len,
rmem, len);

CHECK: spaces preferred around that '*' (ctx:VxV)
+#define WMM_XMIT_THRESHOLD     (NR_XMITFRAME*2/5)
                                             ^

CHECK: spaces preferred around that '/' (ctx:VxV)
+#define WMM_XMIT_THRESHOLD     (NR_XMITFRAME*2/5)
                                               ^
CHECK: spaces preferred around that '/' (ctx:VxV)
+               if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
                                                                 ^

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index 4da5617..4e81bc1 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -32,7 +32,7 @@ uint _rtw_pktfile_read (struct pkt_file *pfile, u8 *rmem, uint rlen)
 	len = (rlen > len) ? len : rlen;
 
 	if (rmem)
-		skb_copy_bits(pfile->pkt, pfile->buf_len-pfile->pkt_len, rmem, len);
+		skb_copy_bits(pfile->pkt, pfile->buf_len - pfile->pkt_len, rmem, len);
 
 	pfile->cur_addr += len;
 	pfile->pkt_len -= len;
@@ -65,7 +65,7 @@ void rtw_os_xmit_resource_free(struct adapter *padapter, struct xmit_buf *pxmitb
 		kfree(pxmitbuf->pallocated_buf);
 }
 
-#define WMM_XMIT_THRESHOLD	(NR_XMITFRAME*2/5)
+#define WMM_XMIT_THRESHOLD	(NR_XMITFRAME * 2 / 5)
 
 void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
 {
@@ -229,7 +229,7 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 			#endif
 			)
 		&& padapter->registrypriv.wifi_spec == 0) {
-		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
+		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME / 4)) {
 			res = rtw_mlcst2unicst(padapter, pkt);
 			if (res)
 				goto exit;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
