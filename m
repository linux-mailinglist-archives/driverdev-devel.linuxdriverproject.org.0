Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD62E68763
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 12:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A6508207EF;
	Mon, 15 Jul 2019 10:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V32drLBWSLxv; Mon, 15 Jul 2019 10:53:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 70AEA207A4;
	Mon, 15 Jul 2019 10:53:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D89D51BF39C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 10:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1E6C8591D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 10:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JotBa1entUu4 for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 10:53:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5910D83A94
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 10:53:44 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y15so7246891pfn.5
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 03:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=RmuPYMJj1ksPxWp3Nnt3MSsohZ+f2rEHBoYqFA6TG4g=;
 b=JkRRfWueyQ6sOQWYmT9mz06UqzCfHJRgG4mLPMFMgM29CmubYYm4y6eRi3C+WPq5A7
 nwddE1G4E9YKbQuLGSKcjcqXkl9tEPGPvjjmQMvuAmk+ZpoGlZuEEAKlbdQ40T38PIpR
 HNBm+cELqP+q9Ep23CdUEfA+PXOgBY1ncUvB6RoxDqu5OGbegkU6jg52qntNMFqF/0Dc
 F6sVrU74n/VueNcqj86pSBAaZ1Pl5GA/sChuPqn98lgQ4zUsAwac8qylX3q2sc3cImyH
 EnCEtPcArBN6rW6bg00pyQpRooFxEcW56RMSw4wAWci4s6+CyFxJC85DhXgDFT4gIiSj
 DAOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=RmuPYMJj1ksPxWp3Nnt3MSsohZ+f2rEHBoYqFA6TG4g=;
 b=lUCTdugDgMxkhjVOY6cSVSvhtVr+QCZ0ez5UWjMEiQvIzA/FyhRX4vsze48Crh1VQS
 w2QJR3Q+PMZIvVH+86EL5sYr0Dg5pA1FtcLDmS/0RYaF9jBWByhUGQHZ+k6/G/h1udD2
 mjSXNtAJjAwNu8mIt8jJbeL9cV++fLJLmKl1TKDxF6o54jM3sty3Ln2XHqHcxr8wS6IK
 L0X0DGmwNUWcYyuEE6yncVI3phuGQJHdh13+mf0imhpExGb8wiR8ngrNHqbu97Ptkk5X
 UfW4VsEqg5Qj9ClSHZ2TnSQOL3KcT9IdNm6KNbpulEGKjdvL5uTGjJd+wUvXv9WofBup
 ThfA==
X-Gm-Message-State: APjAAAVgSK0u2wFV6YIyKWiFkMtbhNyM0hqGe623oX5LQ+y9LJAVRgnc
 p6Nq2DqxJtj4CgbE4Z1BfnAnUYb7w9Ky8+XJWKQ=
X-Google-Smtp-Source: APXvYqwvVy9zVXFDKvtO/Bk+dhrb2yiCHcU9wE3YMACnAl8vM25hLodUDE2KF5Io4XJ4sH0o0OKYd0OKx6SL1JoYgcA=
X-Received: by 2002:a63:c203:: with SMTP id b3mr26625038pgd.450.1563188023793; 
 Mon, 15 Jul 2019 03:53:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:b78d:0:0:0:0 with HTTP; Mon, 15 Jul 2019 03:53:43
 -0700 (PDT)
From: Donald Douglas <ddouglasng@gmail.com>
Date: Mon, 15 Jul 2019 03:53:43 -0700
Message-ID: <CALVR28FwaBGYZrAyqjNEi4+XtJFA+ieBfOu7O3NhSgOQCaQc3Q@mail.gmail.com>
Subject: Kindly Respond
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

I am Barr Fredrick Mbogo a business consultant i have a lucrative
business to discuss with you from the Eastern part of Africa Uganda to
be precise aimed at agreed percentage upon your acceptance of my hand
in business and friendship. Kindly respond to me if you are interested
to partner with me for an update. Very important.

Yours Sincerely,
Donald Douglas,
For,
Barr Frederick Mbogo
Legal Consultant.
Reply to: barrfredmbogo@consultant.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
