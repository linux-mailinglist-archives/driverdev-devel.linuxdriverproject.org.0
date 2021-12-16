Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD95477CF6
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Dec 2021 21:02:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 232CF417CD;
	Thu, 16 Dec 2021 20:02:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yontb4hwYH5H; Thu, 16 Dec 2021 20:02:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93B3C41793;
	Thu, 16 Dec 2021 20:02:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50A361BF3A9
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 20:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C9FC6103B
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 20:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bBM4ijW0YC7D for <devel@linuxdriverproject.org>;
 Thu, 16 Dec 2021 20:02:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C82B61032
 for <devel@driverdev.osuosl.org>; Thu, 16 Dec 2021 20:02:44 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id z5so91712111edd.3
 for <devel@driverdev.osuosl.org>; Thu, 16 Dec 2021 12:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=rvQADyFM1/yISroyAfFtZJinl4CMDkOypzF/AS5Ef8E=;
 b=M8fJA+YfYTfoYVKlsTV7uVSIp06TmhmScDJ5+PgYIPpDu9a+ktzaUVrNT59EXEbrGX
 2J10raD+hqxWuLnWy//ewPUIxNQORBozzRktBRd9SJJc5fZBd8vmiX2TDDC05XHQi8Oo
 +zYEGismYZjpuz1j9oQ2kougAtpUAAc4S1a46FaII88o9v2US/JG55ks5OnHfXQVe3to
 EZSrqvGv+5cyZ/cenl5zeM+57vfBhFH2za+4o7O23PMuG0JZ5SdV4XkkVHfQgQHlXGcZ
 EUgP0S/nd9X72sCjiJjkvsff9JCVscmfjMroE3xMxkidkp9s6dmGYXuZCqrQ5mF2V3yA
 2EGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=rvQADyFM1/yISroyAfFtZJinl4CMDkOypzF/AS5Ef8E=;
 b=dKAEglYVXsF+hz6axtvDZLbWQKHraI8evnVHv15whJtFexz6a3BNv+dOvv9ta4Uzh3
 6yMElsvEmBI/kRX/NQKtbPm6RIlKohFLHix/RIFE7JHBnw4JyJ9bO+zcvw68Mg1X+LQD
 +MMcgi1uswhD7x9kRzYu7FW/+DmdseeAR4EafhbZ51Xaneq6sTmXaCGeZax7CZT13dzy
 lly8ywN+WsHxqr3tgNGceufJpV6ZMPXjujjPvH9ZY/zPSluqviZdS4UZgRQzb9WlEzMd
 hQtUH0ap6ODzsybNpNFFnIjfwl88k25dXd6gUYtV3A6CdDVPVXZGW++c1VA+nt9k+LZE
 Ay3g==
X-Gm-Message-State: AOAM533G7XbmTNLsE5vsybCZ0pCVLV92nAST3VuCUAyVDVVQn+nPEAL9
 B5u7AI6MlVRKCUSHn5He2rkuc+nB+PJF0JAP010=
X-Google-Smtp-Source: ABdhPJzvyiL09domCT1VDVgeRuvMHd7r0quHKgLxRbsfTYaY6F1t+ZQ9smerRjySwXtmRKTMP3lzeHge660kEBY+o8I=
X-Received: by 2002:aa7:cc82:: with SMTP id p2mr21855009edt.201.1639684962486; 
 Thu, 16 Dec 2021 12:02:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:9c84:0:0:0:0 with HTTP; Thu, 16 Dec 2021 12:02:41
 -0800 (PST)
From: "Dr. Joseph Mark " <josephmark00011@gmail.com>
Date: Thu, 16 Dec 2021 20:02:41 +0000
X-Google-Sender-Auth: pPQKcQ7kBjCq8itKT2yzCSFIYCc
Message-ID: <CAP1hxC69-t_t8Ginq1EvSwo1q5TeK9NpvSKazvQ7Ma=s+3eGAA@mail.gmail.com>
Subject: Dear Friend
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
Reply-To: josephmarks20201@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Friend,

I am Dr. Joseph Mark Work in bank.I Discovered the sum of seven
million, two hundred thousand dollars (usd7.2) belonging to a deceased
customer of this bank the fund has been lying in a suspense account
without anybody coming to put claim over the money since the account
late owner from Lebanese who was involved in car crash.

Therefore, I am soliciting for your assistance to come forward as the
next of kin. I have agreed that 40% of this money will be for you as
the beneficiary respect of the provision of your account and service
rendered, 60% will be for me. Then immediately the money transferred
to your account from this bank, I will proceed to your country for the
sharing of the fund.  If you think you are capable and will be
committed to making this deal successes send me an email as soon as
possible to confirm your interest.

Yours faithful,
Dr. Joseph Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
