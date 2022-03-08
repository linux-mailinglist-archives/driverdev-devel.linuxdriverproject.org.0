Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFFE4D1061
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Mar 2022 07:40:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6228B60B98;
	Tue,  8 Mar 2022 06:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ExcFxW-9G54; Tue,  8 Mar 2022 06:40:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 248C7600B6;
	Tue,  8 Mar 2022 06:40:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C24AB1BF36C
 for <devel@linuxdriverproject.org>; Tue,  8 Mar 2022 06:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0B7260B98
 for <devel@linuxdriverproject.org>; Tue,  8 Mar 2022 06:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eoko2usBBOQC for <devel@linuxdriverproject.org>;
 Tue,  8 Mar 2022 06:40:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14B5D600B6
 for <devel@driverdev.osuosl.org>; Tue,  8 Mar 2022 06:40:30 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id o6so23692028ljp.3
 for <devel@driverdev.osuosl.org>; Mon, 07 Mar 2022 22:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=JYR0MSjliEEcDgJsz62eJTq9bJRCvuJ6w2VQmg/D/2Q=;
 b=G3d5Na460VSNP89pqg32xtdTjXIXm9kDmuxYw49CzG8tHQJ79nt/WlPBjWwNht5D/I
 O4jDILG/dcEY2nCTBG8L9JwiCcu3obJG+MMv2cynomi4+LUxA015GY4KI5VF5ky7mSQ/
 60ZRyILSzjkEcCVJa85WyeDIoE6wG5VjCt84CMH3eIMLIfC12Mt+P4RI69au1lbmgBc6
 uf+CoRfVlEwJk/R/8dgW+pJ0y59D4xnTqXChqaJDIjG71BJd+ZQLr/XY2WGEETNRs05h
 A+p5DvlgyAjSrguYHN1Udz7aukIzMR+6ZhWOImoG/rU1s4tMQR869ftfWk/oilMWYK14
 JWdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=JYR0MSjliEEcDgJsz62eJTq9bJRCvuJ6w2VQmg/D/2Q=;
 b=oAAvm+KNuaVfStHpe2v2Jnn5cn01vTfsaAnnKS0glXtp/XnE/xw5yKaKxy5R+kzbHV
 0eZ8KETqYuOU29WLM2GxdBsDHEzUHiyEc+ugaNer6xTmY6S90piHuUG45t9kiGwQjmDH
 z70j9Hj6iPATRCGvif/UnM0mg1vhF1giv2qeip4jKgqNYKQujew7s6zMYSgPvxEgJFiz
 Cv/eJI7nkQzDUD7HfylXOjwEZ8KCjhU3BWwUgsrAjCXPLjeLu6tt71ipGd72jXbmu8qc
 XUy9od2HCkiIvpx0I2zcdlIRm1r15PJt0YlB4ESnb51PQcK+0uPbo0hxMSfWHfVjfCmm
 2OJw==
X-Gm-Message-State: AOAM532Q5PD0DUgdJur4JdFWoit7PDeaWLhdvVif64Mo0p2y/w5Lf1lT
 PwNAGvO7bvxvsrL+pXAsFgkcG6BP7AiuK9hm4I0=
X-Google-Smtp-Source: ABdhPJwOjVJyAD8kIOzCMP/v0zgpw3fRKvpUH8he0XMrhLYCiYoaO6dHG1WSaKF2wY1AupoKTNgCVf6+D+2NQkoGqHE=
X-Received: by 2002:a2e:a587:0:b0:247:b6ba:82f6 with SMTP id
 m7-20020a2ea587000000b00247b6ba82f6mr9818669ljp.492.1646721628577; Mon, 07
 Mar 2022 22:40:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab3:650d:0:0:0:0:0 with HTTP;
 Mon, 7 Mar 2022 22:40:27 -0800 (PST)
From: "Mr.Mahmoud Abbas" <chineduj21@gmail.com>
Date: Tue, 8 Mar 2022 07:40:27 +0100
Message-ID: <CALU6aQyE34wZtanovR9NzG64xsvrAFCiPufUNUCrCn0nKXmr2w@mail.gmail.com>
Subject: Dear Friend,
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
Reply-To: mr.mahmoud_abbas@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

Let me start by introducing myself, I am ........ Manager of
Bank Of Africa Burkina Faso.

I am writing you this letter based on the latest development at my
Department which I will like to bring to your personal edification.
(10.5 million U.S Dollars transfer claims).

This is a legitimate transaction and I agreed to offer you 40% of this
money as my foreign partner after confirmation of the fund in your
bank account, if you are interested, get back to me with the following
details below.

(1)Your age........

(2)Your occupation.....

(3)Your marital status.....

(4)Your full residential address.......

(5)Your private phone and fax number and your complete name.......

As soon as I receive these data's, I will forward to you the
application form which you will fill and send to the bank, you can get
back to me
through this my private email address (mr.mahmoud_abbas@aol.com)


Best Regard
Mr.Mahmoud Abbas.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
