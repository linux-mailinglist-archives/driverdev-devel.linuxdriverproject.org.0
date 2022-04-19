Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB9A5078F2
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Apr 2022 20:33:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B3BC41952;
	Tue, 19 Apr 2022 18:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rU8tcyWxDD3d; Tue, 19 Apr 2022 18:33:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90ED741947;
	Tue, 19 Apr 2022 18:33:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C148D1BF873
 for <devel@linuxdriverproject.org>; Tue, 19 Apr 2022 18:33:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE924833D3
 for <devel@linuxdriverproject.org>; Tue, 19 Apr 2022 18:33:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AZn1B6P6uirg for <devel@linuxdriverproject.org>;
 Tue, 19 Apr 2022 18:33:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com
 [IPv6:2607:f8b0:4864:20::1044])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44428833AF
 for <devel@driverdev.osuosl.org>; Tue, 19 Apr 2022 18:33:27 +0000 (UTC)
Received: by mail-pj1-x1044.google.com with SMTP id
 o5-20020a17090ad20500b001ca8a1dc47aso2683786pju.1
 for <devel@driverdev.osuosl.org>; Tue, 19 Apr 2022 11:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=H6lGyPBvWTi375sykrGxqgnw5zfXxU8a2cCrHANQ5ac=;
 b=lcqprQN7DuyVn/82bKIx/9e/UuCZ6HhdUotFgohrYyE4OjbBTYM0Q4ovygHGVIVd7i
 29ota+snNlUyCYbU8JHEbv/DBhzZ3pqh/VKq00p81hR06+ZQePBSkKAV3yUOcavmlE1e
 Bwv3wXTz9RLIbrOfUa1ZnM9ZLcen0YHtSAxUP1564SeC8x6PVtjmWuvSP/XvjW5QalBX
 Sx3Bkq6PrToB09XJr2sR1dM8JL9y8GYPPUueHx+anS4gOq+QXB6g01LypnT5FGv5NeRf
 v3ugJozWEdloMUZ3Iwx9v0apB8MNJoZCQZU1mZnoJF3qeLU9vaE7kfRfSeklXxE+lpMv
 TGPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=H6lGyPBvWTi375sykrGxqgnw5zfXxU8a2cCrHANQ5ac=;
 b=fN1C6lOPtAhiq5+cpnd0WcoTaVTYp5Ju/OZabg7KHPQzekV1SU3Q0k6YuJPSJuJQwe
 2xSVXItodqQzqFJuKLoKGZ5CBUz5vl+Q1nTnsEmx70Fd4LEPzUVptyigRQ+9GGjXMqv9
 DImyFvp5p99C+YzLJwRvg+MWAFYA6pPSIq/FB1qq0rYBv/EBu3bwgeyAcVu5JPyKnmVI
 S1S+PWYiXqsbmC4vRaNrOeOVPUObm1VhH60IEBYSMlXLZTf/nnRXMGUP9caYCB+osblM
 hndapyjUJSs/7VnjQSN/7R+nLlmotOKLwhemHCDSnHmdph9qWep2uTLosU4Fjm7tGibe
 5N6w==
X-Gm-Message-State: AOAM533Yw3VnrlhGgU033zxXwRnl2B5iSw0ypVPrds3NDAhIKjTQZ/tR
 3Kg/I6bEkpgJi+45Djjm7Bs6DQuk9safKs5802U=
X-Google-Smtp-Source: ABdhPJzFyfpoi1xa6k2TgMO+iNJgu2VZXclH/b/zaJiO61KmmfNekMdjppSysXzAx7cGUPzCAujsJvrzEZt3uCT/22Q=
X-Received: by 2002:a17:90b:1bc5:b0:1d2:699a:54e3 with SMTP id
 oa5-20020a17090b1bc500b001d2699a54e3mr17774835pjb.136.1650393205692; Tue, 19
 Apr 2022 11:33:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:522:8e14:b0:43f:4996:45bc with HTTP; Tue, 19 Apr 2022
 11:33:24 -0700 (PDT)
From: Ms Genet White <dmrdavidnikiema@gmail.com>
Date: Tue, 19 Apr 2022 11:33:24 -0700
Message-ID: <CAM0vfEwrNhA=tJp_sGiPm+3-YbmjWiDSnLSUrrqxrfqbFx9E_w@mail.gmail.com>
Subject: Good Morning, Good Afternoon, Good Evening., Depend when you got my
 text message.,
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
Reply-To: genetwhite33@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I know that this message will be a surprise to you, my name is Mrs.
Janet Gay Markham, I am diagnosed with ovarian cancer which my doctor
have confirmed that I have only some weeks to live so I have decided
to handover the sum of ($3.5 Million Dollar) in my account to you for
the help of the orphanage homes and the needy ones,

Please   kindly reply to me here as soon as possible to enable me to
give you more information but before handing over my details to you
please assure me that you will only take 30%  of the money and share
the rest to the poor orphanage homes.

Thank you I am waiting to hear from you

Mrs Janet Gay Markham
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
