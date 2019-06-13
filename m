Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF88B43760
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 16:53:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF2F6882CC;
	Thu, 13 Jun 2019 14:53:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zrmQbUYMCbtp; Thu, 13 Jun 2019 14:53:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60DE887F52;
	Thu, 13 Jun 2019 14:53:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 820831BF308
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 14:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7E96121519
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 14:53:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvInldRfdQBU
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 14:53:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 042BD204D5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 14:53:36 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id g7so11448466oia.8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 07:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=ZJWgyxN1qgIfn+EP+2BnuBGVeRzIYcYFCq3xVPEHr3s=;
 b=cngwt4YEmrxB7GvKv+MWGKpzhMgidZC6guISe6CQAI7P7gEoH3UFgZOXjQD0Rrcweg
 TPpFJ7dxa1xYNLkcGL6nHSmVbfncNLVfeHGNNBelGDSN8/8ZE/UQjjYwc2XixwtrlWnq
 W8F+o/9jfsie/NRLejrATAJ7jWuaAIpCAbIyyl7opoE0buh9ybuuOPFw0BqYHj0t5Zvx
 l8N1uHJ7x88HTxih/UCVsICNoWulqp+KdVmXxI6aRTPF+0zq3MvhjwXLE3yWg6aGNn4p
 1JJ59zoQsbTqSlXTmbfDtZfM4SP/5hs1PtqHwfChdfXwDRT9pbtOXKm2RIQKGppNrMUG
 OSAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=ZJWgyxN1qgIfn+EP+2BnuBGVeRzIYcYFCq3xVPEHr3s=;
 b=VZ/xVwzzPksIh+E5GaXTOxkJTcw0uwT0ueHOvPJKtNM/XikR9YVW7egHScflYul+Hy
 wt/BiWKdpSA+q+I1KHay8jzTb2P8T+1Y05mQ5OPc8CLhoLvfcijnBIZ6eOm6OgFrojMj
 UeVitcG2z6KEo+JahaTVvfFRir4bbIO3HQ3QTb0yzPZY4K6HXrexsNNbb4bAEuiKf/S2
 6grXKjqBjGnvnCz9+IS2Eb82Wwh3oyKioXXlKL1+o9NPZsegccOyXQ72BxjdXWOnA8w/
 49BWo1J2mqy72ew4seUj6bhlCcGDwR5DFG+1IFG54f22/X+snO+Lfb10EkfmpyNDGVwE
 iaiQ==
X-Gm-Message-State: APjAAAVxhluDdLr/3XCtE+6mk4SriYR6pcspb5vWiqFFPuC1O3mZB2gm
 ViPLMgjEiz0pQQ8nrntyxLveynD241RIbW/bhGQ=
X-Google-Smtp-Source: APXvYqwOd3MkAPCA7Rx61lwI3VSyAgAnTke1TyYTM4qaZDc0MfiJQ+fe/cH/8FOINPxS3cuuOTSc81uHeeR42cqWE9Y=
X-Received: by 2002:aca:ad54:: with SMTP id w81mr3358153oie.86.1560437615197; 
 Thu, 13 Jun 2019 07:53:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:2f92:0:0:0:0:0 with HTTP; Thu, 13 Jun 2019 07:53:34
 -0700 (PDT)
From: Issa Ahmed <abdulahiissai@gmail.com>
Date: Thu, 13 Jun 2019 16:53:34 +0200
Message-ID: <CAA2pJoNsKgGfBwLkpF4sq4F+=w_r-L46PZds_oneuvnkOauheA@mail.gmail.com>
Subject: Hello,
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
Reply-To: issahmed50@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

I am Mr. Abdulahi  Issa, from Burkina Faso in West African region. I
work with the Bank of Africa here Which i am the audit manager . Can
you safe Guard these amount( $13.5 Million USD) for me in your Country??
Further Details will be given to you if you show Interest.

Regards

Mr. Abdulahi  Issa.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
