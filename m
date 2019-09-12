Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EADB0E2B
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Sep 2019 13:43:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A79BD8731C;
	Thu, 12 Sep 2019 11:43:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJDEa2cbX-5W; Thu, 12 Sep 2019 11:43:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89D7487120;
	Thu, 12 Sep 2019 11:43:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F05C1BF42D
 for <devel@linuxdriverproject.org>; Thu, 12 Sep 2019 11:43:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C21486200
 for <devel@linuxdriverproject.org>; Thu, 12 Sep 2019 11:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYZPgfc_TQK3 for <devel@linuxdriverproject.org>;
 Thu, 12 Sep 2019 11:43:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7EE93861DD
 for <devel@driverdev.osuosl.org>; Thu, 12 Sep 2019 11:43:11 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c10so7094214wmc.0
 for <devel@driverdev.osuosl.org>; Thu, 12 Sep 2019 04:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2qWyJzqvAlMobWBOwV84TIJK/7mR78qLFljNw2iai2k=;
 b=GpikCFZEyylw5f9E8A87RDuGOumm+W2OeNuk24B+SmRHZVmOGNCH8PQr8+/pNMfq0d
 1HbSspDZJifdwUFR26ynCGM3hOZkbyognj7zQSYymANtlgsSsKrIvxdf/Vzj0NLJqV0g
 WROTwuvDkBOYGFvGWKX7ZUFhsE9ImjOdKqKZDeDYbkSdTi2NTKxm5Tml2y5ALB3gBBVs
 7PsBv8NbkuFc4wYbRowazOj3M2DDxE/2Uj4VtHljyc7i5a2tneanddakI0hZj8YBVARL
 Ah+fCevZ1NdOxszhHzs0tscerO0n6sVT2cw7VnlC19A8bpDkEajok/6KKazQfSZfSVJK
 XhIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2qWyJzqvAlMobWBOwV84TIJK/7mR78qLFljNw2iai2k=;
 b=dALtcyvIS2rqd+EtDS+Gp6eFM5b2Zg1GRQ40oG8b4z9OmN/UMVDwsnB2mfgPiETKmJ
 jbBaT1ErKGO/rP3JVtCGXfYWe7diH5FejKFrJi5rF0YVTwoKhF3Im9zFA4shLEoEj81i
 BaNCSLH++bhZ5frIMnIbkZBRQtdmNclc166mMucm0qGHiv0VsMLstT+XJzzDJO02oOE5
 5UOsYuUT5MJTxzNzAE5LRZ5HHighXOImaG97WeT4FUV2W5He3abZKbbN1qAjfQ5owHoZ
 ylhCNFZEg6vxsXv3kE5j1JnKvA0beuarVmtJviMWUIfjGkZvgFcynbe8k28w9mSeJP+7
 at4A==
X-Gm-Message-State: APjAAAUqp70IIJAIVln/qmbfv+4ZCUnIFEeUdEIEtzhjjTdraMzJPtvE
 RgrnJdBcdQ35/V4/q+SFn6A=
X-Google-Smtp-Source: APXvYqxQJNDvhUPj1LBZ1bHoKivBJHr8WZG4mqpwyi62mAotEWrGMbEIWQLyXh9Yw8zJQRC6blUOOw==
X-Received: by 2002:a1c:4e14:: with SMTP id g20mr8196245wmh.112.1568288589980; 
 Thu, 12 Sep 2019 04:43:09 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id h21sm19074876wrc.71.2019.09.12.04.43.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2019 04:43:09 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: cleanup long line in rtw_mlme_ext.c
Date: Thu, 12 Sep 2019 13:42:57 +0200
Message-Id: <20190912114257.17529-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove comparsion to NULL and unnecessary parentheses to avoid line
length over 80 characters and follow kernel coding style.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 18dc9fc1c04a..e984b4605e91 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -507,7 +507,7 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 		pwps_ie = rtw_get_wps_ie(cur_network->ies+_FIXED_IE_LENGTH_, cur_network->ie_length-_FIXED_IE_LENGTH_, NULL, &wps_ielen);
 
 		/* inerset & update wps_probe_resp_ie */
-		if ((pmlmepriv->wps_probe_resp_ie != NULL) && pwps_ie && (wps_ielen > 0)) {
+		if (pmlmepriv->wps_probe_resp_ie && pwps_ie && wps_ielen > 0) {
 			uint wps_offset, remainder_ielen;
 			u8 *premainder_ie;
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
