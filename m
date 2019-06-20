Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C0B4CD30
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F23EC86AD9;
	Thu, 20 Jun 2019 11:53:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J2AVteOSZqHV; Thu, 20 Jun 2019 11:53:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FD3A86BA8;
	Thu, 20 Jun 2019 11:53:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A54301BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9F9AB85FEB
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b8fN6cTqQLxt for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2C43C85FAA
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:27 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 196so1468690pgc.6
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=waWBlfDAOgYndMYGO5owcXvr8WyyVDEtwKLSaWiPQ44=;
 b=i+XZXXZAQ5lqbXNATwV6U00ZznicZ1O33z597XmuSG3ohLPa+IdjbTJy5xdp+VMkGo
 tdrxZz4r76Ik+27YQbjRgfk8mSY6dvOjzu7lWhDX170wma2VjY4CplRzmjOdDX/VcU90
 RQPQWNqSTF668DWNEIcc5SV7E23J+5WHvyeWa+AUQ525QefwCV8Io0B5omR6Iip05ED5
 JgB7qCk7pUOcfGBLh+iEw0eb8sBvlSZlQ9VFNyUSjjODxGVyLE+Db0Ir3jKD4w9stmDe
 MGwanTJU0NPMH85SXDSsKUArNmp9vy+7uunU1f/wjIzg6IZrQ0+sD3mTsjzT7kr6+N77
 Be4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=waWBlfDAOgYndMYGO5owcXvr8WyyVDEtwKLSaWiPQ44=;
 b=tEyMZ90Ww7Tyu3Rgqcomrut+xbyDvAMSv3yOO1xYbtLRPCA0Jm9sEB+DuLANCQ+xJb
 EREB1482BlPw/bG3V8JcIqqB0UAlNIzZF5LpaF6wgRpLq20DmArXjGVdJN/jfMg9vvk8
 +uIC99Fe79kcHJbve9T2airjqLH4zCQpN9n1vh2n5i1GRknUAnAvfo3ooGYZCO1JROKS
 UuydHazZQnaYDKRgUQKcv+GjHP6tS6GWbsAbp4r+C+1DERyqaavhgLt26WwJnvoV0Jyt
 g9DveDxwFlLbgjyAPur4p7Uwzo5VAUQYHKN3PAkZLbq5qeAz2CumdnYsn70hvqxC96Uw
 Dqgw==
X-Gm-Message-State: APjAAAUpxFroDPfDyXArDlyAZHHtFFDrEL3VBvWLLCNgRzO8bU2m1hrn
 ylncPtOeMFlk7u/mezo7Mkw=
X-Google-Smtp-Source: APXvYqxJc1bfF9KvDMWK2IgDpjTY+Q+35DuynRx7eXNXhF+5yCu1A6FovTzkifm9nmcFN/0TdSydiQ==
X-Received: by 2002:a17:90a:25c8:: with SMTP id
 k66mr2694830pje.129.1561031606838; 
 Thu, 20 Jun 2019 04:53:26 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:26 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 03/10] staging: rtl8712: rtl871x_cmd.c: Remove unnecessary
 null check
Date: Thu, 20 Jun 2019 17:22:57 +0530
Message-Id: <20190620115304.3210-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190620115304.3210-1-nishkadg.linux@gmail.com>
References: <20190620115304.3210-1-nishkadg.linux@gmail.com>
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

Remove the check for whether the value of variable psecnetwork is NULL
as psecnetwork is a field of a field of a non-NULL pointer, and
therefore cannot be NULL itself.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 94ff875d9025..01146d9c3a9b 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -468,10 +468,6 @@ u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
 		}
 	}
 	psecnetwork = &psecuritypriv->sec_bss;
-	if (!psecnetwork) {
-		kfree(pcmd);
-		return _FAIL;
-	}
 	memcpy(psecnetwork, &pnetwork->network, sizeof(*psecnetwork));
 	psecuritypriv->authenticator_ie[0] = (unsigned char)
 					     psecnetwork->IELength;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
