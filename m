Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D51C74983B2
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jan 2022 16:39:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1A5E84B6F;
	Mon, 24 Jan 2022 15:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sKc-0B_jDMxo; Mon, 24 Jan 2022 15:39:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4074F83FBE;
	Mon, 24 Jan 2022 15:39:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F4731BF2EC
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 15:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F09B74155D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 15:39:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QDMBWUJAy7M3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 15:39:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4B724154B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 15:39:36 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id ka4so22466898ejc.11
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 07:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=CMzdAZWvSREUxL9gyi7ZDNRKXhnPhof45SdOgpKoP4Q=;
 b=Ma7FM1VPRIQtWBgOKSLe8INLI/JyN1U51g9qQvlgbFEW8qo9XFQyps2arBJTtM3gOk
 kAG2VI07gvAEQYC1rKVq+JFa2Ji5JLDTrUU/RhZ4iq3BnUr4rGqwhnmg3YdAOuEfOjNa
 /Q6EOECLEmokAb2RaXfY4b0t7mRwXzPsu+jphP3+PxEcwU8nWbyk5xP40fqyIwEvNiOK
 /6rNZzP7penOKw+Zz9+JZYteiKgmITXXbDtcglCUQ+7kNDkm0Wpa+X8RYIzqXMtZb7iw
 z56q5fImVF7Yi8Q3KkWT1RBXtzfxvNW7r4Qw0cTohEDTN5DyYRqJFlsGjWFXsVO9FSVI
 jaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=CMzdAZWvSREUxL9gyi7ZDNRKXhnPhof45SdOgpKoP4Q=;
 b=lzS8a/HPCItJCMJlWZ/b4T+3iCyw5e25oQQCb12KhfFwpkrmszFxUM4p7UIEEh3A3t
 P1ewemvhiDD4k0XjMykfRhpPaUhH5CdEZRJ9LsXasExuRZ05e3rzm0yWHXcSgxI6aY7h
 TGIJCmK+vqIQIl3xRYQkg3t64TwjNBCtMrtSlybaP68QaPpSV7QVI1/Y/1ShbVMuWXlo
 80aHxxE3YF5twnbzai6/pDp63ANoMgFkPlDRuPWMI89pZbDfroEqX67jWFe9xPlVifJk
 /eQ/L06A/nSmFLASyLLjfWb3JhkOTVSxgPRDtbev16kVCLXbQX4R3sDu6wqjwXkejgEV
 kLnQ==
X-Gm-Message-State: AOAM531iA+QCTeuPKJbDUb7rJ1M9ZX5Yz0rF/QJmZSrUoOLlSpXiAOSo
 K/ytdcDxghcGASGofcBtvgc6wK9sO0WfKQofo3U=
X-Google-Smtp-Source: ABdhPJyFMHHa3CqMsDHitCKd47PNsau0NgAY9DWadeuAHT93TwgjcuRWcA+ghHPcjPG74unNbpoj+EwljaoaL9iHeJQ=
X-Received: by 2002:a17:906:5596:: with SMTP id
 y22mr7900745ejp.8.1643038774481; 
 Mon, 24 Jan 2022 07:39:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:22d2:0:0:0:0:0 with HTTP; Mon, 24 Jan 2022 07:39:34
 -0800 (PST)
From: MS LISA HUGH <olivier.folly0@gmail.com>
Date: Mon, 24 Jan 2022 16:39:34 +0100
Message-ID: <CAG_GOAvXmjD4tX1gdQnCYMr9xZp_4R7m5PYSk8wRRNyunkUE=Q@mail.gmail.com>
Subject: YOUR CO-OPERATION FOR THIS BUSINESS FROM Ms Lisa Hugh.
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
Reply-To: lisahugh159@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

I am Ms Lisa Hugh accountant and files keeping by profession with the bank.

I need your co-operation for the  transferring of
($4,500,000,00,U.S.DOLLARS)to your bank account for both of us
benefit.

Please send the follow below,

1)AGE....
2)TELEPHONE NUMBER,,,,,...
3)COUNTRY.....
4)OCCUPATION..
....
Thanks.

Ms Lisa Hugh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
