Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F07CFEC6CF
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 17:31:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8EAE124B04;
	Fri,  1 Nov 2019 16:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eNoHQO5o-E7R; Fri,  1 Nov 2019 16:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B0B472474E;
	Fri,  1 Nov 2019 16:31:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A63E41BF306
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 16:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A134F86B20
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 16:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LQ7snKaXoTgP
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 16:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8BC686B1C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 16:31:37 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id f25so7959435edw.10
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 01 Nov 2019 09:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=latS+LOZUfL1yiiuFRKw1aKCiSm5Bt/9vWdEAhPRwuM=;
 b=QhV2skXhxRQTHu3K7BGATa7S/eBd2R29m8d87/BzlCSmWk1bsymeqzkrSxzWTosfAe
 3YIVId3V9lgUNLaUU0Xqkejju7nIwHNfiBCZcW+oX10gJRolVrUoI2K9scee+Wv02fHl
 UEJicxBgVAvWAtFO7/5Iz9+myiGLlbKs8xxEMTyfm7rj0BVTPZshdtyw92azm/5VfgJp
 tH64KGtJS4p60xCkBo9Xu85eOLcnd9ubVOC7NCjlzcwdqAdPJAhKOfvP9O+DXn7yD/H5
 1JVM+vk3PuBVH0QF1qU44pdoB2zMQ/cjGBCk1qOhGSw+NlWrEMXGIgpKpUDKmTDiBpdd
 kgZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=latS+LOZUfL1yiiuFRKw1aKCiSm5Bt/9vWdEAhPRwuM=;
 b=rnfg4/wy+2pOIuttL31XfpvIEtZcn3VFdfqVM2TR70+i1YbxN7XDdPLiCwE/99ULEj
 NuMmwHo4fSn67uNks7J9OajFqzAGHsj/WYQr4DHoutNHVH2QdHGaYinOZKqalILCAGy2
 XkmUsXqOmiOSx11v9gM+LoyAwyozc5TDJAFzuvNK8DHWQfg4xT+LHtl5v1WzAa87SKo6
 zfrulvLXulNqm4mXeEgSg+5/Ast5HoGdETU6AOiP+r798aytCxsCEbyuCW+fw8jF9KFH
 Zn7eQBPu6qKTKPEUDfBo0YAi4r7HkIMJsAP4KZNBJvYERjO8fvXDS9tHrwa/HnyxdfdU
 8ofQ==
X-Gm-Message-State: APjAAAU2OQGxgwpkLTtpzcltw2xijGTczmXyu+fdiYC3g8uI06d1EAvq
 DryEnUsVpiOQiUP2pDTiCA6I+sLSR58/3FSAtfs=
X-Google-Smtp-Source: APXvYqwGWuMH94vfqKzrw+H3XXGqKga+v5QwYYKiMsAyR3hj26eiMeo7mmTXKMU5Qpi0wGXjotaEwKxR4EyNvZaNjOY=
X-Received: by 2002:a17:906:f2d4:: with SMTP id
 gz20mr10695917ejb.215.1572625896197; 
 Fri, 01 Nov 2019 09:31:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:1118:0:0:0:0 with HTTP; Fri, 1 Nov 2019 09:31:35
 -0700 (PDT)
From: "Mary Coster, I.M.F director-Benin" <eco.bank1204@gmail.com>
Date: Fri, 1 Nov 2019 17:31:35 +0100
Message-ID: <CAOE+jADviugiqpraL3AHycDGuFR8=vm0xYL9JoO9iz4W0SutLg@mail.gmail.com>
Subject: Contact Money Gram international service-Benin to receive your
 payment funds US$2.500,000 Million
To: undisclosed-recipients:;
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
Reply-To: moneygram.1820@outlook.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn Dear,Funds Beneficiary.
Contact Money Gram international service-Benin to receive your payment
funds US$2.500,000 Million approved this morning through the UN
payment settlement organization.
Contact Person, Mr. John Dave.
Official Director.Money Gram-Benin
Email: moneygram.1820@outlook.fr
Telephone +229 62619517
Once you get intouch with Mr. John Dave, Money Gram Director, send to
him your address including your phone numbers. He will be sending the
transfer to you  $5000.00 USD daily until you received your complete
payment $2.5m
from the office.
Note,I have paid the whole service fees for you but only small money
you been required to send to this office is $23.00 only via Money Gram
transfer.
God bless
Mary Coster, I.M.F director-Benin
m.coster@aol.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
