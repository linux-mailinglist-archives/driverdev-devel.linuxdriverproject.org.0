Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA762DDFC
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 15:20:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE1A686214;
	Wed, 29 May 2019 13:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0pbvItPkw97b; Wed, 29 May 2019 13:20:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2844285B80;
	Wed, 29 May 2019 13:20:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8AB861BF2F5
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8728E85D4B
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YxKqQCIJFK75 for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 13:20:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 69A8985CDC
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 13:20:46 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id g9so1607354pfo.11
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 06:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MnsmjGULYbyE0ak6jRzzu9lNKNNX7Vv2vqMfhHQMf7g=;
 b=fF8OWavKnY8mawPFHREaawr8yDeOuu2jsuoUvXQAbTbB2ZI5fqlKMlGGB6PMpkx0BV
 mCIEllMv3ip5gQTVm5u4+agvoC7NrGXm+GecCTjYa1xrflD+E7Yqg7HgKbzRbT9aTFUP
 7JzfJZtd2Z68FKXAMuPnXRkK2L6iunF4LzRSxiMrWWkXQ1XLdlrxSFS6dbc4NB89Xgje
 M7O7nSy9LLNyMZNtYCZUxFv60J2pCv+7Zpo3YDzsrtV8hR23x8gJuZIOnylGDWgdMXuS
 XY7F3G2gqjK5XFb9YorFbX3wTeR1Sa7X02PGiXTJzmPHmzr/F+AV2GOo6oNH94zMzAmq
 LOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MnsmjGULYbyE0ak6jRzzu9lNKNNX7Vv2vqMfhHQMf7g=;
 b=tD/ceYfnC4/c7kwXMjBS4GvnRXkFDFhOYVTO90nRbhN8clfrpzKFdV7aAkCB6leErD
 0AVF+5+M57nZg40PkEaLSUNgy61+E+CDoQWDjRsw33ooGdxlMclu3RFqfsCxagRdbHOy
 LdBfDfH69nDGZDhISGCHcQ1sQa3GLxyBY4tuiKuM6kQtcD/KsUp/iNPRklWrUFNEbvDw
 e1nIkg2YJQn4WlihfNMRBLZKCxnTsP9blug73MiLzdoDDk+GKMQyPGJ9jelwUqq3CQn3
 EZAsg2HvF55ut/CXDsZFyU0Gl/JtzKZG6ncpKlxKwbnwh3hbnMPvGxbOPcCU9eGU5RQm
 NJEg==
X-Gm-Message-State: APjAAAWTfIQji4aQk9iV6mbwMg5PdPfnoHPNmyFVKx6BnD3y75qSPecy
 U7bimlB7scNW3hLCa+5p1O0=
X-Google-Smtp-Source: APXvYqwrIpIcdADUaHyqqcKbgm99ep3yRJ0nrQO/vlRmcdUx3v4Ql4Qq1Svd9NESOvFINo3fGCD8uA==
X-Received: by 2002:a17:90a:33c5:: with SMTP id
 n63mr12445270pjb.16.1559136046086; 
 Wed, 29 May 2019 06:20:46 -0700 (PDT)
Received: from localhost.localdomain ([122.163.67.155])
 by smtp.gmail.com with ESMTPSA id l3sm28812133pgl.3.2019.05.29.06.20.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 06:20:45 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, himadri18.07@gmail.com,
 daniela.mormocea@gmail.com, straube.linux@gmail.com,
 vatsalanarang@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: Remove unnecessary variable in
 rtl8712_recv.c
Date: Wed, 29 May 2019 18:50:31 +0530
Message-Id: <20190529132031.6493-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary variable last_evm in rtl8712_recv.c and use its value
directly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 5 ++---
 drivers/staging/rtl8712/rtl871x_cmd.c  | 2 +-
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 82ddc0c3ecd4..f6f7cd5fd0f2 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -885,7 +885,7 @@ static void query_rx_phy_status(struct _adapter *padapter,
 static void process_link_qual(struct _adapter *padapter,
 			      union recv_frame *prframe)
 {
-	u32	last_evm = 0, tmpVal;
+	u32	tmpVal;
 	struct rx_pkt_attrib *pattrib;
 	struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;
 
@@ -898,8 +898,7 @@ static void process_link_qual(struct _adapter *padapter,
 		 */
 		if (sqd->total_num++ >= PHY_LINKQUALITY_SLID_WIN_MAX) {
 			sqd->total_num = PHY_LINKQUALITY_SLID_WIN_MAX;
-			last_evm = sqd->elements[sqd->index];
-			sqd->total_val -= last_evm;
+			sqd->total_val -= sqd->elements[sqd->index];
 		}
 		sqd->total_val += pattrib->signal_qual;
 		sqd->elements[sqd->index++] = pattrib->signal_qual;
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 05a78ac24987..7c437ee9e022 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -880,7 +880,7 @@ void r8712_createbss_cmd_callback(struct _adapter *padapter,
 		}
 		r8712_indicate_connect(padapter);
 	} else {
-		pwlan = _r8712_alloc_network(pmlmepriv);
+		pwlan = r8712_alloc_network(pmlmepriv);
 		if (!pwlan) {
 			pwlan = r8712_get_oldest_wlan_network(
 				&pmlmepriv->scanned_queue);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
