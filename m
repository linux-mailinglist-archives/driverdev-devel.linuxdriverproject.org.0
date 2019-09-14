Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A5DB2B66
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Sep 2019 15:40:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4189C85B04;
	Sat, 14 Sep 2019 13:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C71nzgDApT8a; Sat, 14 Sep 2019 13:40:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA1A185B4A;
	Sat, 14 Sep 2019 13:40:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 443F21BF2E4
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 13:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 377A88443F
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 13:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f8Dmh6czixcL for <devel@linuxdriverproject.org>;
 Sat, 14 Sep 2019 13:40:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8C71786AB6
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 13:40:20 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id i1so10957431pfa.6
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 06:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UGd0Nsf8r1SfWs/Ru1bBbfL8JHhL34BqVq++qP9ktxo=;
 b=gr/af5E7uh/eclxKy3/AKgBeqQlB+53jhLBMucilUiHjS1JUk00+CEHijqFKWuHjvG
 M2uwYHq2JyEVYYzUrpAGp5FvpcIGL3Gy4w3stGtsVEhu66pSfKeU5JR8avuE/qJA6Tv2
 2EmZtq8H4HrvhxAV54U4J+K7FK68Q5UNsr6pXKZTlfQz2BDqFJLJQat9+ohrKeIK+Ci4
 oU0ijH4lPXb05FPq6NHcUOt2DamTTODNSnv4W9zvrJgzEa86nxd6nqAjr9fqgc6p47ST
 Mu05OFXb+qLgGAj2oOvkFRJ7qKIfwDSRaAxhdKSXMWizl5zmH9VllUGroPLu1scnSPj/
 J2DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UGd0Nsf8r1SfWs/Ru1bBbfL8JHhL34BqVq++qP9ktxo=;
 b=jBP0I9aFPL3Mh7qTKQLWyS5vYYcOzFqD7QHc3iz+l26FqKfQtHPG87DS4ApmHl1TIf
 SCLPrCF1MM+vYoFuKbQgglHR+cU3+5tdJboCpt2k6vHD33PaGLmkZ/tICew9mCez1bZh
 zU2zc3+xAi109zAaR8iUlj75xCpYyrghs3nPgOSD1ih/y/xlmka/OXoteQRmXSoqWFV9
 WXfSatRCqL1S9RvedWc+z0irmbKTuCLmy5GCI9HryMt0WEMy+iGOAlD9O9wN0Cb8wQQs
 /RQgzK01XqxjGwVvjKuAxiDbskIBvqtPrHofuEeSauGE91KoodM8caZ9GQ8e7SuDat06
 Q3dQ==
X-Gm-Message-State: APjAAAU3kEkzpcxfuhuBX1zBDp3cBdYHj56djZbO0cc3fnjqH54c2yQf
 RQq8OLXPp9yW1+EUhPNPt5o=
X-Google-Smtp-Source: APXvYqzPBdEMLarV6HxcOp/P3+qDK4rs/ZTQxq3kCZlCdJc64XysdI4AUcwdx8zzGLH6WkwHmLlQng==
X-Received: by 2002:a63:5a0a:: with SMTP id o10mr48642930pgb.282.1568468419959; 
 Sat, 14 Sep 2019 06:40:19 -0700 (PDT)
Received: from localhost.localdomain ([211.34.238.221])
 by smtp.gmail.com with ESMTPSA id h70sm26992902pgc.36.2019.09.14.06.40.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 06:40:19 -0700 (PDT)
From: Park Ju Hyung <qkrwngud825@gmail.com>
To: gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to 
Date: Sat, 14 Sep 2019 22:39:51 +0900
Message-Id: <20190914133951.16501-1-qkrwngud825@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190828160817.6250-1-gregkh@linuxfoundation.org>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
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
Cc: alexander.levin@microsoft.com, devel@driverdev.osuosl.org,
 linux-fsdevel@vger.kernel.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi.

I just noticed that this exfat-staging drivers are based on the old 
Samsung's 1.x exFAT drivers.

I've been working to get the newer Samsung's driver(now named "sdFAT") 
to fit better for general Linux users, and I believe it can provide a 
better base for the community to work on(and hopefully complies better 
to the mainline coding standard).

GitHub link
https://github.com/arter97/exfat-linux

I also included some rudimentary benchmark results.

I encourage mainline developers to explore this driver base and see if 
it's worth to switch, since it's the early days of exfat-staging.

To others watching this thread:
It's more than likely that you can start using exFAT reliably right 
away by following the link above. It's tested on all major LTS kernels 
ranging from 3.4 to 4.19 and the ones Canonical uses for Ubuntu: 3.4, 
3.10, 3.18, 4.1, 4.4, 4.9, 4.14, 4.19 and 4.15, 5.0, 5.2, and 5.3-rc.

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
