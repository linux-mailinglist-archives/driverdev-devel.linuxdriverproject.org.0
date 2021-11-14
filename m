Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0517144F5CB
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Nov 2021 01:38:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 106FD60667;
	Sun, 14 Nov 2021 00:38:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ncbEE962h3Q4; Sun, 14 Nov 2021 00:38:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77FB960093;
	Sun, 14 Nov 2021 00:38:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C446E1BF95F
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 00:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2D5B401C5
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 00:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lQpU8O-fzols for <devel@linuxdriverproject.org>;
 Sun, 14 Nov 2021 00:38:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6588D40170
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 00:38:12 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id d24so22692253wra.0
 for <devel@driverdev.osuosl.org>; Sat, 13 Nov 2021 16:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=JONdNVdBlwOaayLv6r3+ADIN5li1EUdh95UdwgGmb68=;
 b=ElPZPqSuVtbe/GvZkbtQHyOJyCyB1ijyIs14xu3c/l9aGjPfI16OuIrJ+7EpNamX2B
 S6h+j5N/6t1RQycwl/WJwG5uHP+7DUf2WndaUlzkFyvF39J0OKapKRW/Rbn+hXvC58Kb
 AGgy2HGX1n5lwRnttT0Qknf1am+/61pMyJohr3iIiGdvwlBfp+5QiIOseWyJxZrQxUyw
 Mos0s06Vg6COqzkMUoV7HIRh301Pve7+jeYH17GNuvHDromBm3lMhuaX2Dm1PCd1E2Ll
 Wx+4hmQF9M6R3Razop5n6b2bxxS2dhMPe8ZywEanF3uOz+R699JY72KtU2FfSjlPnkfG
 hbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=JONdNVdBlwOaayLv6r3+ADIN5li1EUdh95UdwgGmb68=;
 b=Wro6iNXtQTVM/V0xaqbLlOF4WP73u96o2fuJp3OA2S7guU/dRo5d03vnNyVMKZvL+p
 xoK6MPawpy4daMTwjqrV5sXpvfatG64G6b54bWDYJIzu+8ZSMFqexpwiKtHLeceIMP3D
 EuyIfr/5dBg4+EiSBrvQ5E7IhhXL0sribx8NIP9HI/2tklIVb7gOHt7CWv9GSniQ1elR
 iavDkkV5ywVvz0enKEyiKTPN2z4KhtdxETXLQdX/dFdvhzrRo1GZs86uRxaRKE3TkdY5
 CvtGzW5KBG6nfg1x+rYInncyIZTYnSmX/y7reBYCreEo8b8aGPvTIqQyEvJmMxd5BcAH
 xnhg==
X-Gm-Message-State: AOAM533dDnbWfh9UOCZtUzD9858wzgyC+YRkMI7Pk9Nedy31jZP1hu+l
 T0VV1WWxtNW6sXdrXw4aSnZlckEZ/TyHWzCGvSo=
X-Google-Smtp-Source: ABdhPJz/z54Ab9VOS5TTm6eaW7jhI5Nf41MgYQGfH+BFnyGRVSb+3B6bPWW3+30cLLuO48xxKD6eyx4eik2JgvTRt3g=
X-Received: by 2002:a5d:64cd:: with SMTP id f13mr32130972wri.382.1636850290529; 
 Sat, 13 Nov 2021 16:38:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5d:6d0d:0:0:0:0:0 with HTTP; Sat, 13 Nov 2021 16:38:10
 -0800 (PST)
From: "Dr. Phil Remond" <drr051246@gmail.com>
Date: Sat, 13 Nov 2021 16:38:10 -0800
X-Google-Sender-Auth: GsKsU1aMy96s_k5Hmg9i_dZmVHc
Message-ID: <CAGyazJCREZdHCJyPm0Mp1Pe=rZBLO4g9=9bH=xss_Eiu0UkGHg@mail.gmail.com>
Subject: HELLO
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

-- 
Hello,

Greetings and hope this email meets you well?

I am Dr. Philip Remond, the chief Medical consultant at a reputable
Hospital here in Ouagadougou - Burkina Faso and I have a Patient who
is an origin of the Republic of Philippines by name Mrs. Sismer
Shirley Acojedo but unfortunately is in Coma presently due to
complications from a Cancer disease and she has the sum of $10.7 (Ten
Million, Seven Hundred Thousand Dollars) she wants me to guide you on,
so  that her Bank can transfer it to you for charity purposes.

I will like you to contact me on this email (drr051246@gmail.com) for
further details as this is a very sensitive issue that needs urgent
attention from you and I want to maintain the promise I made to the
woman before she entered Coma, never to betray her by looking for
another person other than you that she choosed and selected for the
offer among the people she got their email contacts randomly in her
quest for an honest person oversea to help her wholeheartedly in
handling this project to fulfill her wish.

Best Regards,

Dr. Philip Remond
on behalf of Mrs. Sismer Shirley Acojedo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
