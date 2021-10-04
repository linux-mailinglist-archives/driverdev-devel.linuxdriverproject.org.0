Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E13420EC7
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Oct 2021 15:27:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BDD340861;
	Mon,  4 Oct 2021 13:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RI1NNqOHvt7v; Mon,  4 Oct 2021 13:26:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A271040203;
	Mon,  4 Oct 2021 13:26:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 860C61BF2FE
 for <devel@linuxdriverproject.org>; Mon,  4 Oct 2021 13:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E46340203
 for <devel@linuxdriverproject.org>; Mon,  4 Oct 2021 13:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lCVNZ15xJjgG for <devel@linuxdriverproject.org>;
 Mon,  4 Oct 2021 13:26:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6D2C40134
 for <devel@driverdev.osuosl.org>; Mon,  4 Oct 2021 13:26:48 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id d207so5792834qkg.0
 for <devel@driverdev.osuosl.org>; Mon, 04 Oct 2021 06:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=R6TLM/s0+uXb/aOVc9Ei4lbrZIayOPhy4ASQ2sJi8ZE=;
 b=aXjUXmTAfQwaO+1YF6rh/GIkVE92dv53Wcl1FZjVftERGVxCTR+VRlXIzow1GGxN2C
 5KeuVTjqReSbPxEN2dMJTvV0rxkDLcuTX5LMrJILIUn3qwXONxfpyUjW0lHhqYTiI0eP
 Az0Aq//pG5OOmMRwn3/ggjB2hCg8kyEjS8O8pPBjGidIr/PpaxwBjAn9zrtcIJTyCWl8
 ZvjGnDMRbhWE0FIjIR0r2+gdfRp8aW0CkI3sOX/36IeaKUmBKfNrbEpv4e8bxpBDDWd4
 UqJ1KGBRH6WC80KqMFNAZqkZQQw4MFRhUU2lwCYmnAdMqEyyzGxLhX1fhm4rZUyq2qt6
 WzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=R6TLM/s0+uXb/aOVc9Ei4lbrZIayOPhy4ASQ2sJi8ZE=;
 b=7eLQU+J/uDsG2QWU7Np1YnewmhFHcPRH+XAxXUYONYz9uJizX9yqlPtENWKPOAnedb
 2aAucV9BTkVIK7CJLcWCeoqeftuXvV9eFJmHHDS6xUq4eIiOjO6JQe2NKeVeH+9VQ92g
 aVKkFiZZKS1LP+7Ysm5/lPV2I5inOdSob499P98kSejk9xRswJbhAa4w9FVtuqn/4MfF
 7teXq0RXEtjQKRDWlU7Jjpj69NcI3kltdEvZYhf844jXWD006jk8AYSM9VbysSZW2lCh
 BhzY5anGUg4U1D4qbraUTBEyTIV/ywSNO5Z1m6oPZwbD0bUOmcA0klKGkgj3gjYXPvhL
 70Bg==
X-Gm-Message-State: AOAM530V0a98SEUQbyM+zVNwjofnMfpmONsNN9asFanjcXtyJTt8LO/u
 1qFrZ5vngyD+OQbo100RadKmq1+OHPn3j4WTPgY=
X-Google-Smtp-Source: ABdhPJx/8iNwVPtV2rKNecMkMvKPS+4FWd6Dm8ItPCSCmzzyMe6eLmjMC4XcwjAeEhhJllpuo/GF0k7PffN5PUJK1uA=
X-Received: by 2002:a37:9ca:: with SMTP id 193mr9685339qkj.185.1633354007351; 
 Mon, 04 Oct 2021 06:26:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:519d:0:0:0:0 with HTTP; Mon, 4 Oct 2021 06:26:46
 -0700 (PDT)
From: JEONG JEONGHWA <jja31jja@gmail.com>
Date: Mon, 4 Oct 2021 13:26:46 +0000
Message-ID: <CAGSDqw_dNO-z+j9jzZFx7EnU32hhYu_BXQ5fbN3LqPKjbHttWA@mail.gmail.com>
Subject: 
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

Greetings from MR. JEONG JEONGHWA  from South Korea. I am married to MRS.
SARAH JEONGHWA, I am a gas and oil engineer before this Illness i was
with my wife for years without a child of our own.She died after a
brief  illness that lasted for days. I have some money which i
deposited with a bank. Recently due to my sickness called cancer, my
Doctor told me that I will not last for next Three months due to the
cancer illness, And now I also haven Covid19 now please i am contact
you Having known my condition. I
decided to donate this money for charity organization to a good person
that will utilize the money the way I am going to instruct. Please get
back to me for full Details.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
