Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D39314D33
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 11:38:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AC1587376;
	Tue,  9 Feb 2021 08:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KM+n8QTeWWpH; Tue,  9 Feb 2021 08:20:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 726448669A;
	Tue,  9 Feb 2021 08:20:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB1011BF282
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 08:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B7B656F8BC
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 08:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EEVBe8eAnaV4 for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 08:20:26 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 08C216F675; Tue,  9 Feb 2021 08:20:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8D786F675
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 08:20:24 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id j11so9306935plt.11
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 00:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=596OWezZMkcevprA9Uk985roAtQRKWhP5585LyNlU4s=;
 b=KHoDvfwQ2Nh5+4EwcSLaEdbAqt2rgSuCLdS4zBR/oV5ez7/s4tXXs2DKbGwBzecgAa
 nyKvmVQESgvFlG2w/Nz3sdFRCYIQ+/X2lcJfjf37UYVGmDVIPN/BhIO9nW/pjLuJoBbO
 P3jFWuvGp/vDqIKrlXHE0Fb4BPOByrpcynDrcqhpJDWh+fvmcuzjj0EzLE2O0F8nc0sF
 g3Y1lLoNZ6oWsQutM3D5bigYJ1KFMQr54cA3vGWy/6CyW85Bvq0+lCJCVckS0OlAgTxz
 sDSxwLvyXBARH8jHs3Eo0/GeWUMgBrWX8qPftyItFQvMgOnG6ev+DfhMnv+h4X4U66X7
 WTRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=596OWezZMkcevprA9Uk985roAtQRKWhP5585LyNlU4s=;
 b=VCzpazQ3DlN+0RNAy6sGrqUzA1/RZjCc/V27xVASN494LiOoFYDV89wXpwbiDoddv+
 BmuCxLt2jVR0gLBVBVMslDddAIyNijkhtK/oA/Cr1pAoQuOsPPSFOyCM0H+7TZUta51S
 bE9ZuGwVEFJCANDaaFNyeEI12AwmS6kJNfL/e+jwUYiqvITptBD21pVrMJYgSh4ifNum
 WuLo+D2FEzSZihc5YfXtUy/j3E6NI2VMEA/S7nfb96EpEk56avaYY5bfqBRy3Gmo2E2O
 rCpvQw1vs0HxrCe0PW/2n3JnTjxuySMo/1lBtIgL+QIlPdIrhPW8EcJ0QoeiSsu+k4eq
 Fgmg==
X-Gm-Message-State: AOAM532WKweUWRtBU4dsImNDjbBrxADXpC6XdiIzEO6Ow2bwsjsI2L1Q
 jkWg4g5Qxn7OUJ7OqgMfQzY=
X-Google-Smtp-Source: ABdhPJxQyLnB5JUtmB7xe878gee/f22fA72SwYGW1vLnrEGUzCIilIC3R7AqlqktabSjpHS1pH50uA==
X-Received: by 2002:a17:90a:7025:: with SMTP id
 f34mr2951380pjk.116.1612858824327; 
 Tue, 09 Feb 2021 00:20:24 -0800 (PST)
Received: from localhost.localdomain ([106.198.21.213])
 by smtp.gmail.com with ESMTPSA id y16sm22011002pfb.83.2021.02.09.00.20.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 00:20:23 -0800 (PST)
From: Atul Gopinathan <leoatul12@gmail.com>
To: mchehab+huawei@kernel.org
Subject: [PATCH v2 2/2] staging: hikey9xx: make phy_ops struct const
Date: Tue,  9 Feb 2021 13:49:36 +0530
Message-Id: <20210209081935.3084-2-leoatul12@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210209081935.3084-1-leoatul12@gmail.com>
References: <20210209081935.3084-1-leoatul12@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Atul Gopinathan <leoatul12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following type of checkpatch warning:
"WARNING: struct phy_ops should normally be const"

Signed-off-by: Atul Gopinathan <leoatul12@gmail.com>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index 8918f3665f8e..e7e579ce0302 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -585,7 +585,7 @@ static int hi3670_phy_exit(struct phy *phy)
 	return ret;
 }
 
-static struct phy_ops hi3670_phy_ops = {
+static const struct phy_ops hi3670_phy_ops = {
 	.init		= hi3670_phy_init,
 	.exit		= hi3670_phy_exit,
 	.owner		= THIS_MODULE,
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
