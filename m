Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD30F2E35B0
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Dec 2020 11:06:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 859BB203CE;
	Mon, 28 Dec 2020 10:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dsqpJ-pSvCen; Mon, 28 Dec 2020 10:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CDD8E204EF;
	Mon, 28 Dec 2020 10:06:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18FD41BF232
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 10:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 155C185D87
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 10:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RtfmxVDzZLjl for <devel@linuxdriverproject.org>;
 Mon, 28 Dec 2020 10:06:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7833685CD8
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 10:06:38 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id h22so22826840lfu.2
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 02:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=dGFTgGcRujaKVNM6ipjz6OavsqjZpLAuWJIkLwgW8fc=;
 b=UAUYnu2e9giAY/vs4k6IS4+yKQCBY4137Fpt6bg8Sc31cVoPM313pQLSCdfd7LhX2/
 GIVaxRXuf3RdLycqs4kjAlSD3k/L8Doc6IVoXvDEyMuxH2kpvSCb8ysz+I39IIWgukvY
 MQ1kk8VbD0Xdg+PA1rycV6LIJT6o6gQorlVCcY6HtrIMRESkx6umFtQrrf9yqG0OQJbi
 /9mF7FnmnDy/OBd1ih87QxR3wBVFSh7zmdli13lAfXtOaqrjVfU50yVpbDHA4LcDmzyW
 imlxsJQb5WF+Hi3s49/IA11XzK5JrgJhoVWsBnLiMK1lNuOjPUubw+DMzwCGj/XgW7ob
 pNdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=dGFTgGcRujaKVNM6ipjz6OavsqjZpLAuWJIkLwgW8fc=;
 b=NrIv0ecUJmCh/TVpc+gAMZQaWg7MXgT3yokrq94DJAOGefhVGyRi6AdTc/DJkEM+IB
 pX/cN2Hq3UsF37ksGNN/NMNGvkxu+TcOw89D4Pdc4gHZvRRn43Ie0ZMu3kjDNwcfCjOU
 jBatg4owsPu/+KbEjalbA+rkN7c5Klmd241j3XjUtVLT3rgi91wsATqS5+aUkuS3yMzL
 Z3M1r1ndIIWpvgyBWcfO0Bzv89gRzHK6Skvg5okYFYRHrdfjcFLke5dXByifyPlGt1ta
 1HN5n03+QFiaEZwII0Wr8wjuMVueQecEPu+dRx0dQ002+No9pWrvw8pkJ7C2hGHsKR7X
 pImw==
X-Gm-Message-State: AOAM53137q8ZrJlt5R/acSaIqoR4evnmqPp1L2dR9YsFXCHpn7YgMsMF
 7UT+zVrckeHaUwFwGAYNm5FYBAmAekrrYhcSxWs=
X-Google-Smtp-Source: ABdhPJz4FzzUlhAB4TYYS2+DDPy0BDKRm1efjwaHQb2soGPHBJAhh+POYnSwUvdyQUgwC3lPIDNP7Qf1LNHTkKOqrxg=
X-Received: by 2002:ac2:4c2f:: with SMTP id u15mr10682434lfq.163.1609149996417; 
 Mon, 28 Dec 2020 02:06:36 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:594:0:0:0:0:0 with HTTP;
 Mon, 28 Dec 2020 02:06:36 -0800 (PST)
From: Mrs Suzara Maling Wan <centralbkbf.unitedbkafrica1@gmail.com>
Date: Mon, 28 Dec 2020 02:06:36 -0800
Message-ID: <CAJVrGSu64D7Jp1ZC6--_N=fne62KP_MTVN8nQM3LpdEoMajoXg@mail.gmail.com>
Subject: Mrs Suzara Maling Wan
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
Reply-To: suzara.wankind@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I am Mrs Suzara Maling Wan from (Philippine) but based in West Africa
Country since eight years as a business woman dealing with gold
exportation, I have a dream and desire of building an orphanage home
in your country, and i have a deposit fund to the project, but
presently my health condition we not allow me to carry out the project
my self, now my doctor has already told me that I have just few period
of time to leave because of my ovarian cancer disease, can you help
fulfill this project.

If you have the mind to help me in this project, contact me privet
email address  for more details on the way forward

With kind Regards,
Mrs Suzara Maling Wan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
