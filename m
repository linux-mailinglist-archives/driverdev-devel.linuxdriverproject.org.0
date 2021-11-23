Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C758145A924
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Nov 2021 17:44:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C18E403A5;
	Tue, 23 Nov 2021 16:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VTrF57VbQY0r; Tue, 23 Nov 2021 16:44:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CBAA40140;
	Tue, 23 Nov 2021 16:44:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C87CA1BF487
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 16:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A91D040204
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 16:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jComli-735XP for <devel@linuxdriverproject.org>;
 Tue, 23 Nov 2021 16:44:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C0FE40140
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 16:44:25 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 j6-20020a17090a588600b001a78a5ce46aso2589133pji.0
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 08:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=7JGyB07y7ZByxWxdqdB4x0U4uTVlvMSKnrd7b8IAjS4=;
 b=TonMh0+ZsFWmkk+V64GV4h3yXf9ckG2DUfn0hGG07m5ctZJ+ys0f0eOp3UJRl3u7fm
 Z1FLzZrEeViAnGEIv1Ulu7fayckyNlhqC6bcP/C4dxxQW5Re0bmfsYPyxdrKnu+ymsyp
 X+65i+yj+zfwBeP/LcVjnESBXFGzOQPu9GH5OVlBXrED+YxDqBX8HSKAU5ENJ3FfRRWT
 ffxGrumUTaRBNbx36h0XeBSHmquuprObdOB2Kuu/Ldc8vv8yXN1+sSJgmSQShDVkL2Jk
 aFT9yEkBaPt1uwWned6Rp/GzVMTZ6aDR6nu+UKUEqx2ClZZr3fjFqDUiOVIacKDupUrX
 Caow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=7JGyB07y7ZByxWxdqdB4x0U4uTVlvMSKnrd7b8IAjS4=;
 b=BguaS4KqiUvpa1lihR8UbIZ+g0SbpoC/YaVbpUkQmwI3ocfFc3dW+dP3VJzGwfqIp5
 m6WhET5TLd/i1rIArBQTYKTPLT9vWYhtzN+UB0xOGYMYbk4kE01MMycDGKU2Dd6elkQe
 9nt1MV7Ay3o4vMZDSo5MwtwoLrKoCir6UHQ7Jshc8jw5Rc48RMAiijUO352UkSNnP8qz
 gzEbM54t00M0UJzwjbmLvT58eqTbG270HwJoQPxyt+LZElRTIOEiD7mVfNATTvND3zXo
 4WU1qhXAhOZWW7oMUaHCEZJt9QKJ9FUjHv5soPh4AbuzNjqlBNDiwsRcfG3++9coP/va
 nyvQ==
X-Gm-Message-State: AOAM5314Jhzu1JjRoD4mpqS/WtOW9coM4o6/H2SbF3a0bpTLi8JZ0SmS
 XFutL3ez4BR6XIlvs3aMApUDRJsH3WXFqFt7YxA=
X-Google-Smtp-Source: ABdhPJzTAHbAKrGNhYz+cMw3CGykVngfnQLwt1Cc+zP+CBSsVYj/H4TORxmup4XVSUX0eFcN/wwz4NkHdHKwep2ta6M=
X-Received: by 2002:a17:902:e885:b0:142:1500:d2ba with SMTP id
 w5-20020a170902e88500b001421500d2bamr8443979plg.19.1637685865582; Tue, 23 Nov
 2021 08:44:25 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:680b:0:0:0:0 with HTTP; Tue, 23 Nov 2021 08:44:25
 -0800 (PST)
From: Fiona Hill <grace.desmond2021@gmail.com>
Date: Tue, 23 Nov 2021 08:44:25 -0800
Message-ID: <CAOW9D1vrJPo3a4BExjxxxu4V=NXdKvD-dqZhNSNUm4utiuOvMg@mail.gmail.com>
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
Reply-To: fionahill.usa@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 


I expect a letter from you i don't know if you receive  my message?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
