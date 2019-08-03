Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8961A804BC
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 08:44:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94ACD877E8;
	Sat,  3 Aug 2019 06:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Pj7R6-W+uhU; Sat,  3 Aug 2019 06:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5F1B8701C;
	Sat,  3 Aug 2019 06:44:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E27981BF401
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DCA13864F4
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id msjpc5tBoGrx for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 06:44:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 65D40864CD
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 06:44:20 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id r1so37080797pfq.12
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 23:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=8+gPOP3P8OKQwrQ03rQARMMLgVDBlmUgX6EEGDD6arg=;
 b=L8NSVij3ndDzQa4d0EiA7q7AnkWOaTwbhzwnXdIQzicMHsw67XnTxn1rMOKHNJgniE
 XolmSNUdz3xzqxK1mwVVSTpti5QRMTabYcp/QwRHWon4q+4LnNlu2ATMlba6feR5u2jx
 okwFShQZ2F07uqI6G/P64QKRO84wFBq42ClWjWZUSp9KWXKB1uYVqH69SMg6jCUIbeCN
 P8i2qSXxjFJaSDjS6cctDfuCHzVCHMn8DCGjqPjfE0prI/69R9Qwt2B/7if9D890RxKz
 2/slw6YU78KX7s0VwlgT8IIXpAekoJQPiWLKpaS4osYVQ7weHTy+tOOBKzVs5pFBK4qO
 io4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=8+gPOP3P8OKQwrQ03rQARMMLgVDBlmUgX6EEGDD6arg=;
 b=rdJqIRh61bJ3PUUPWi3ruDBUJeh+a/3Yvm/3N1aL8P5YI8nnwkgGU9XIVfWIkWmzzl
 pNYGzDlAnffm062nb87jlyzhKJn1kaA7vgj9n/RwxEqGuCvjsXothCcRj7+4h83cFn6i
 hzR8t4N/6m5oc5kQUpCwfbewgI2JsQE+e2vvbnK39q966RJkByl/fEznjkomNJxJ22am
 pjp2vz1RdPgfOYAN1EsRt5zpwAIrDSx9c6gu/b+bK1Im2piizrkxSC0YtzAlbAXw9PM+
 VxptlJBTUqhiSjSsOff9p7RGvoqO2b1BvHXr5EJK6T8r0ewciCPvzDu/aBWfMENrW2M5
 XFkw==
X-Gm-Message-State: APjAAAX+4Ct3MSJ5JyLpJKFRwRhxDQoggs9IMAK+q7OPp37KKKW1HmV4
 0zd4u5CD9jGj+4Cxvw4PTi8=
X-Google-Smtp-Source: APXvYqwtVxfbGEpZZjwmdTY0kaK83OS/8uGbt+P8AQXuA2ZBR8yHjyRjKqkbVaqeehDOMovVvl9ojw==
X-Received: by 2002:a65:638c:: with SMTP id h12mr10886030pgv.436.1564814659740; 
 Fri, 02 Aug 2019 23:44:19 -0700 (PDT)
Received: from saurav ([123.201.163.116])
 by smtp.gmail.com with ESMTPSA id r61sm11944458pjb.7.2019.08.02.23.44.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 23:44:19 -0700 (PDT)
Date: Sat, 3 Aug 2019 12:14:12 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: Larry.Finger@lwfinger.net;, gregkh@linuxfoundation.org;,
 straube.linux@gmail.com;, sanjana99reddy99@gmail.com;,
 vatsalanarang@gmail.com;, hdegoede@redhat.com;, insafonov@gmail.com
 ;, puranjay12@gmail.com;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: core: rtw_recv.c: Remove Unnecessary
 parentheses
Message-ID: <20190803064408.GA30111@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove Unnecessary parentheses around precvframe->list,
pmlmeext->mlmext_info and precvpriv->free_recv_queue

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 9caf7041ad60..620da6c003d8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -145,8 +145,8 @@ int rtw_free_recvframe(struct recv_frame *precvframe,
 
 int _rtw_enqueue_recvframe(struct recv_frame *precvframe, struct __queue *queue)
 {
-	list_del_init(&(precvframe->list));
-	list_add_tail(&(precvframe->list), get_list_head(queue));
+	list_del_init(&precvframe->list);
+	list_add_tail(&precvframe->list, get_list_head(queue));
 
 	return _SUCCESS;
 }
@@ -219,7 +219,7 @@ static int recvframe_chkmic(struct adapter *adapter,
 	struct	security_priv	*psecuritypriv = &adapter->securitypriv;
 
 	struct mlme_ext_priv	*pmlmeext = &adapter->mlmeextpriv;
-	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 
 	stainfo = rtw_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
 
@@ -1500,7 +1500,7 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
 	struct rx_pkt_attrib *pattrib;
 	struct sk_buff *sub_skb, *subframes[MAX_SUBFRAME_COUNT];
 	struct recv_priv *precvpriv = &padapter->recvpriv;
-	struct __queue *pfree_recv_queue = &(precvpriv->free_recv_queue);
+	struct __queue *pfree_recv_queue = &precvpriv->free_recv_queue;
 
 	nr_subframes = 0;
 	pattrib = &prframe->attrib;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
