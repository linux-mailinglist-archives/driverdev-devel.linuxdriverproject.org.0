Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BC6456F8A
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 14:25:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D746825FE;
	Fri, 19 Nov 2021 13:25:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oNJIO1k-qdHP; Fri, 19 Nov 2021 13:25:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95D76824A4;
	Fri, 19 Nov 2021 13:25:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 413AC1BF29A
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 13:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 309D7409F4
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 13:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fAi-i9ir1URh for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 13:25:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com
 [IPv6:2607:f8b0:4864:20::932])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A581409BF
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 13:25:31 +0000 (UTC)
Received: by mail-ua1-x932.google.com with SMTP id r15so21216222uao.3
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 05:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=nAMriKH5b2MmK9NraUu8oC4i1CEtsvKI5D+RR9oqErQ=;
 b=EyNutJng9eteknvJz9v5/onU8JbBBt9Mfk/j1Kk19YtK8gUJRPMzUmBjUqm1VorcoE
 HLM5Y3MJkC0UW6ZWLH7oFSDuLkyJXuqQ4jJMWaasvCQ7UHEI3MIM+YgIgMLkLFUADlJb
 UtwF7w6k5m/YjE8MjNanV9Ecgg++Efev3wHWeF1FYgD15T6Gx221nkFLyTqrIxcvMrYQ
 qNhGCEW4ReQtirerNAr++b8zLcEnVbaX5uXICzGQtYbb7auH55NTMnXK1e3RxmGFJYoC
 d4IsOnUvykErfszvxFIz7A0BpVl38P1MZ6YJwpeMFDwJCz+8SMD9TyWVsg8rQwh3LAqh
 DOkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=nAMriKH5b2MmK9NraUu8oC4i1CEtsvKI5D+RR9oqErQ=;
 b=pfez3qTjSMbjsRRzyjfFhIUVesg4r3Q4jFXU3uTrOdskGuNGA8tNd6i+UzU53THLtt
 hrfjr64gAelSFhamZr9kwnUHEwitm51uM35UkRY5Rz79PHip1sUpmSEIxV+tZY1TiJEU
 j3RxMFunTcr7ftHi2cv9vN/r5YuH1/mhUhHnjl/ZQKKNn9kg9hS7iHP7vPUw0TF8shox
 jxBh+CDeNXIxmGZytA1TB5DqrgFxKmalplK90qJ3u8kGD9Ilc3vMr6zuBpyRgZn1Io4/
 Adn8/3At0fb7VUhnNBEWlS3rrJmTCrUA5R2NpbCTsJxaGn/76VzXJW7x/QE0riIEraxF
 90tg==
X-Gm-Message-State: AOAM532kjguE0I70LdBozuyMl4HJbobi7dvtqMVNGNTh9oxNrNJOuhhV
 NHDIhY11xOSjxxk+ANr+H5WjZgECS8bWsFE3xfY=
X-Google-Smtp-Source: ABdhPJxRuElPyy/uy4ia5gku6bch6NRaKlm/HafEjadl3dk5JeWrpUOh3lx8td8LU3mLWU97wLZNomUWdOLCBuxqlkQ=
X-Received: by 2002:a05:6102:2748:: with SMTP id
 p8mr96199770vsu.13.1637328330489; 
 Fri, 19 Nov 2021 05:25:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:612c:2111:b0:246:9daa:aa22 with HTTP; Fri, 19 Nov 2021
 05:25:30 -0800 (PST)
From: "Barr.Georgina Latin" <internationalbankfundsmonetary@gmail.com>
Date: Fri, 19 Nov 2021 05:25:30 -0800
Message-ID: <CAAOQgZ2bTYgotBiVnjuP-F5HnRnyx9XUqh2eFsjQ2YXYW1qqgQ@mail.gmail.com>
Subject: DEAR FRIEND
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
Reply-To: barrgeorginalatin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend.
I am sorry for reaching you through this medium as it is the most
convenient way for me to reach you now based on the urgency and its
importance. My name is Barr.Latin Georgina, a legal practitioner
and also the personal legal attorney to (Engr.Dyson) who happens to
be your cousin as been traced to your lineage because of you has the
same last names with him, here in my country, Lome Togo in West
Africa. I want you to assist me in order to transfer a sum of (sum of
US$7.8 Million) into your reliable account as a next of kin. The
board of directors of the bank is planning to confiscate the
consignment fund if i couldn't present the next of kin to his estates
within the next 21 working days. However, it's just my urgent need for
foreign partner that made me contact you for this transaction. Further
details of the transfer will be forwarded to you if you are
interested.

Best Regards.

(Associate Latin Georgina (SAT TV)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
