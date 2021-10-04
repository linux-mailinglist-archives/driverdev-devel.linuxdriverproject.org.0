Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4924C420E51
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Oct 2021 15:22:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B828061B74;
	Mon,  4 Oct 2021 13:22:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9z6Mv2tm-QpA; Mon,  4 Oct 2021 13:22:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3114461B6A;
	Mon,  4 Oct 2021 13:22:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FD831BF2FE
 for <devel@linuxdriverproject.org>; Mon,  4 Oct 2021 13:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C92D42752
 for <devel@linuxdriverproject.org>; Mon,  4 Oct 2021 13:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id crhKYW5TysvE for <devel@linuxdriverproject.org>;
 Mon,  4 Oct 2021 13:22:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 750724274D
 for <devel@driverdev.osuosl.org>; Mon,  4 Oct 2021 13:22:23 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id a13so15782632qtw.10
 for <devel@driverdev.osuosl.org>; Mon, 04 Oct 2021 06:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=R6TLM/s0+uXb/aOVc9Ei4lbrZIayOPhy4ASQ2sJi8ZE=;
 b=dseQgqicbDO00uSCyQnVc54iQtwxNFhc5BQFAG1lpbKyHEwjbk7xF6wu1KUVJIlTyB
 /SpVXqo+gNFwxlSa4d7wHGOkVOsRXZMOBSn9HXo/9gMt32CUwu/bqiOo7vVFyQ2SkeEf
 vWx4QRgFv5693mtBHxrwFr8GZRCIO057taUNj7xdlG8xNX+qMq0loq5mykec2Qg1tBAx
 2Tmaw4vMt8FZ3g9TTp9uCKXCGVlmtIMC2fP51wh3UiO1z65+2T8mj8eKdV49oUr0t/c/
 XNBeM8hSWUuSrhV+WmwrPk5AzkDyLFQlLCtzVD/LTLPipi5Z1qcRioNfak5Pi/ipdF0P
 XEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=R6TLM/s0+uXb/aOVc9Ei4lbrZIayOPhy4ASQ2sJi8ZE=;
 b=4VaHhNXtjEvsVuqIe0I3wnmWCeE85PPLf3UguUqzDkIMPJ6a43lUzMMwMhCehKPZEa
 +zS/CMExlHqhqSjm2uPrYto5nswm+8erFTHnJnjMFebKBMKqBSptUm8jART4VgyWBJ7p
 Hm1AnMUGiGNjxm2iIxFm05tlhZjFAWP9qjrbctANB7q6Di0ivibjniy15eRUfqfJYH2L
 6YtUbxXtrAQd8U/vvIWtqu4+lh4+a3x0curn3VuXLLnCQsHPmIhydVuHNitaK7GCbQAf
 LaMccEEVaxy5byMdd/DMlIOAGgE7TsiYMBsh5B3e3H1J5A5dzCBFXH8BcVZDgir9X/9a
 sozg==
X-Gm-Message-State: AOAM530DvxQQTJKsMH8gI5PX8nOjSq6LouTARzqOrsWQVvd0LzBOc49x
 hJcu3RAiz02t+1zp0unDxkDE1zZsTy1peOd3neA=
X-Google-Smtp-Source: ABdhPJzdQJ7ApPpbXWmWQn9Q1eBi4fYdTnPnpy2+f9GEmsFU4TvbZm1ECWEuJZodVifDqkYg4ADNne/OBB+YjBThhHw=
X-Received: by 2002:a05:622a:1652:: with SMTP id
 y18mr13571067qtj.226.1633353742104; 
 Mon, 04 Oct 2021 06:22:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:519d:0:0:0:0 with HTTP; Mon, 4 Oct 2021 06:22:21
 -0700 (PDT)
From: JEONG JEONGHWA <jja31jja@gmail.com>
Date: Mon, 4 Oct 2021 13:22:21 +0000
Message-ID: <CAGSDqw9+BUyqpRW+JKdzTwuaShEqyUmu9H1dCoUx7OTzW_pwPQ@mail.gmail.com>
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
