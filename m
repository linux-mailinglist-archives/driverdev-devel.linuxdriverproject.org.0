Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA451E9B15
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jun 2020 02:54:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E8F087DFE;
	Mon,  1 Jun 2020 00:54:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NFLP3lhFwdBF; Mon,  1 Jun 2020 00:54:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6645987D98;
	Mon,  1 Jun 2020 00:54:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D4AEA1BF963
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 00:54:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D1331868F9
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 00:54:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p4iiYHEiVmzl for <devel@linuxdriverproject.org>;
 Mon,  1 Jun 2020 00:54:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DC33D868F6
 for <devel@driverdev.osuosl.org>; Mon,  1 Jun 2020 00:54:41 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id u17so5401623qtq.1
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 17:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=oYJCiCsJ5rLqUom9oCyqrR/lBdyEXmqQQtn1m7mSt/0=;
 b=iSFRfX2Oeg2nK5+eMsKrbn9rOWlvhobnIu7lOvWqt11y6XacLKTS6Gq3Ti43ZMN0RK
 h23ezvserR9TgsXx38pfm+ZyE5f1m8NWETJpYafrGBfdtiDyc/po+WeMe0d7MCX/mfTX
 WwUrbVKmGnz9AmoxW3ETuElx44nHpI7iX/4h9wMSzpFD+j4MEQnZ+XiyAlCF44/t8H1/
 j1aYQNnnWCUpyddrlWub6zvjOJyebL4CtP4C2spSwRtCYhKdnmmfmVzT0CjNQY/v4Tn+
 vVmQEzofSxX8DAh7VYd6+WOGmF+qN4Bnn1KrHIKyD8QzKskIp/gGg+JqTDTZlb2fme5s
 Jg8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oYJCiCsJ5rLqUom9oCyqrR/lBdyEXmqQQtn1m7mSt/0=;
 b=JAyUBjharT8iLV8AQup6UaOVAncYAwZAnNiUgnpN6pVmnUIQqq+1+ywXoFVt+ArquU
 /6dpImbDcyPzXci33QOtLXWCKbRKyCV3QKa/5M1nGOy6gaA/VdkxyhfhTAGauhH1Bs4v
 1OJ+ySjf9fQavJpZRzdQsPAeCc6wZQEEkqXHjJxkVG1aIHlygznhwAYr17R1all8cfsR
 dAW5QTf5JG12s1m7LqTrfnot2yjYjPbe8Z0VATBvrzfLJTx4se8D7oBTQRK8B9zN9fJl
 dxQUfLavCzRc2FN1mUbGJkeZ9lxhM4wlY3Xyt+qMqSvR1ITK/OMokmyNBMvvfhGNM3ik
 MsMQ==
X-Gm-Message-State: AOAM530608SoUmyOZ8t/DohhlkF1c8Aolh/ZZtEXDp0Nu0Tyqzz+/Ykc
 B4zJmsAwYF3ds3VR0uwNtUA=
X-Google-Smtp-Source: ABdhPJx0qlqlnp0/w0aVKv9ByK3iYUUSlvOk1rMYr7XYLf7juDCKBoPJuUbtzjKdypHuK1BVOUC+qg==
X-Received: by 2002:ac8:7296:: with SMTP id v22mr19863238qto.239.1590972880948; 
 Sun, 31 May 2020 17:54:40 -0700 (PDT)
Received: from ip-172-31-24-31.ec2.internal
 (ec2-54-234-246-66.compute-1.amazonaws.com. [54.234.246.66])
 by smtp.gmail.com with ESMTPSA id g47sm12882388qtk.53.2020.05.31.17.54.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 May 2020 17:54:40 -0700 (PDT)
From: "Rodolfo C. Villordo" <rodolfovillordo@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] staging: gasket: replace symbolic permissions
Date: Mon,  1 Jun 2020 00:52:40 +0000
Message-Id: <20200601005240.6315-1-rodolfovillordo@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, rodolfovillordo@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Richard Yeh <rcy@google.com>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
+               .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
warning detected by checkpatch.pl

Signed-off-by: Rodolfo C. Villordo <rodolfovillordo@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index ab5aa351d555..d5e167dfbe76 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -71,7 +71,7 @@ struct gasket_sysfs_attribute {
 
 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
 	{                                                                      \
-		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
+		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
 		.data.attr_type = _attr_type                                   \
 	}
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
