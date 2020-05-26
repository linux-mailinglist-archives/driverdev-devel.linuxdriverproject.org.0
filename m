Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EABE91E1C18
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 09:22:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9BAED85E83;
	Tue, 26 May 2020 07:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zT--5lfS7iLv; Tue, 26 May 2020 07:22:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7DAF085A0E;
	Tue, 26 May 2020 07:22:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 25B791BF263
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 07:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 228E98820F
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 07:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id COVEDoNfa3Oq for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 07:22:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9560287E23
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 07:22:32 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id h9so5210622qtj.7
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 00:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=c3Fcc8gz8J5iNccSFh3jFm1Hw/vV/wXWEeAsag5Sry8=;
 b=OynRUbr3PTelyZw1wZqIup4afOQCcHt7xDA6pxkwKjS44iWD0hBxE6fzvBxKcqlq2t
 qtpj+ZSzGp38Z0ikUImd1BQjvSfTkzLSP607AVdOqfIpCSj3N97JJpXIJl530s9c2JdV
 KNYTyc3kRoJ/CRVXWMzEem8P+DTihvVzwvNSKI/gPvkdYP1XmWRF8ZyGqY0f722ch7tr
 QzBGXBskVaFr2wD/WGuuDCGLMGG+8M5MVL6qX4MG+U9ASEjAJ1LR+2PfSxUqGpE6QCwS
 IAQ10knsdFZtD0Cf6lxq2VOS02fs6yF7CdFiueCCmirmvBnyAiQfCAh8S9RGHwhjrilV
 tG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=c3Fcc8gz8J5iNccSFh3jFm1Hw/vV/wXWEeAsag5Sry8=;
 b=NonMyvMafU7tP6w/idbyZEVwTrDZi8Obz7NyLLBvis6u+FNaF3VqkGfGvhl+A7o/3y
 5VUqzfFyF3ojteym5w6AnEV2BhjjhPSpdne4ahfknM9jlWBoA03zgvcAWP/5YUhFdw1u
 njpGeq8KnXL0OQYq3BsIE8idYskY0M1aO7A72Ph/JAduL25Zp6HuVNu8Gbw7Ei90n+YN
 x6ZUdLGY28I/80pqyL5cBRDffDRZMnHI5nq1r//Q6ARh5lwAED92EgZi7V04h1X7BbNH
 zJ+m2yyc4uObJaqttBXy3v6UoQ80rz4hbzp49poh+S7WQqv7xIVaGvNwjNQibpPxcBQ9
 FzFQ==
X-Gm-Message-State: AOAM530KgSZvU1ylfwDVDt6biyHNAGM2CH8Fw5+FjsjirQxSerhVErkn
 rM0ju6TUxZ0s7A1SRNJTuN/HdZDjOwsPCKp1hX0=
X-Google-Smtp-Source: ABdhPJy7SMFO8WHuRXT5UTs11+GfL+PgIQtApnb9+IGkO1yHNIVk1ZFD/sfq8fyiN66t2vDp7qlGiUC8yAY9dBYQAT0=
X-Received: by 2002:aed:2412:: with SMTP id r18mr53085qtc.12.1590477751599;
 Tue, 26 May 2020 00:22:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:3f68:0:0:0:0:0 with HTTP; Tue, 26 May 2020 00:22:31
 -0700 (PDT)
From: Ahmed Al Qassim <ahmedalqassim79@gmail.com>
Date: Tue, 26 May 2020 15:22:31 +0800
Message-ID: <CAEy8vJFjYQPztR7G9KMuL4HDGYG0q-0citjJ-yQzCAJpfr6Zwg@mail.gmail.com>
Subject: Ahmed Al Qassim
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

Greetings to you my dear good friend, please my name is .Ahmed Al
Qassim,a Bank Officer in one of the leading bank here in U.A.E. Please
I have something very important and confidential [a business proposal]
to discuss with you. Please kindly get back to me through my private
contact E-mail Address so I can give you the details. E-mail :
ahmedalqassim79@gmail.com

Thanks,

Ahmed Al Qassim
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
