Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E88E1273E1E
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 11:10:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1AAAB228B3;
	Tue, 22 Sep 2020 09:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O0Y3KgJIzKFE; Tue, 22 Sep 2020 09:09:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3624622865;
	Tue, 22 Sep 2020 09:09:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83CC21BF25F
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8028685692
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IFHR1DG3g1qC for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 09:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE8ED85608
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 09:09:24 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id e17so2536165wme.0
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 02:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=yHqTcn2U7RDmnbpDaAxHpk0G7vOoxgOC7hzwW8pqYFw=;
 b=Ux0a2BqUHcF9EWJZbV6vNhH79TD6U3EZrF7dCG3ywqag7To8X5v4bxCFxRUO0q0yy1
 /yLfWtyOlue3PhYomr1LSX0/H1rvvsr/GcBxY50gGS3+kTrKiLzCBmIOncji39hbdv+R
 FvfMjgBWmHW0JFfx6Lt3MY+EEG1sPdsqDGn4hN4vQiEh63BGbDaw9U6LSIX/yIiiGsVY
 lBgK1lIueeLINs36y9M9LLlxD+A/Fdi6NMF8JQwnRBsySrWLmaadV/4fMNgU2TNyIc4a
 Vjzi9daPXIWGlvGYNTNbTxgp+D2l2s3cYZLKIPa5TvMRApDKTZ9nAFahx3OLWhjdPdm2
 k+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yHqTcn2U7RDmnbpDaAxHpk0G7vOoxgOC7hzwW8pqYFw=;
 b=G1VTvoQV5PbsBy6KGNZ8DGcGNjA0eugP+sxn3UBYA3J+CFGwrTcJ9ZoKZk9RPZk/J3
 J6ORNJwzDyrmkwKjCJX50bkuYG/0g502tKtddhvfWF/SwovikCKn2Sq1ormsr3P6e80H
 fT5Bl4LP319EjigcA+4BZhwB8SU3fmIQknLSOloNb0S4x3A/w1bloqdFRPdb9DdXSFuK
 OGUfWDwU6EXDj2Z5cynudEU0xwvmDa77jrwK22SxJ35vvVN7yDoJ+h412jVz7kveEVSq
 YRhwZVCPQh+zpGbVO/FjKDK1CXepXZ1Rz7lucHM/Oe7mftOK0IZYpjadXCS/SHmguheG
 NFCQ==
X-Gm-Message-State: AOAM531jhkQKNhGD81yRcdur7ZtO4IGzg9ctPlWC/oH5XnY74W6Y0P9u
 bKXXE3ZS6Ep84OwCSJeSk1Y=
X-Google-Smtp-Source: ABdhPJxa508dlVC2F2kdRJSuvrWU3g2/INpgrk2mlg/amgU9SM/ZNb9Iw+22sIrmDRoEnwluRx2AnA==
X-Received: by 2002:a05:600c:2742:: with SMTP id
 2mr3336433wmw.136.1600765763137; 
 Tue, 22 Sep 2020 02:09:23 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id u186sm3659332wmu.34.2020.09.22.02.09.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 02:09:22 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Alan Cox <alan@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REBASE 0/3] atomisp: Rebased fixes
Date: Tue, 22 Sep 2020 10:09:07 +0100
Message-Id: <20200922090914.20702-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <21f18dc2-a1bc-0a37-0336-fc35170a40e9@gmail.com>
References: <21f18dc2-a1bc-0a37-0336-fc35170a40e9@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro,

I've rebased the patches now, but there is a slight hiccup. For patches 2
and 3 of this series there will now be a conflict with commit 9289cdf39992
("staging: media: atomisp: Convert to GPIO descriptors") in Greg's tree.

I'm not sure what the best way to handle this is? The merge conflicts
will be trivial (due to a conversion between the gpio_* and gpiod_*
APIs), but I could alternatively send these last two patches in via
Greg's tree if that's easier for people. Let me know what works.

Best,
Alex


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
