Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CDE41EB81
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 13:13:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76D81607DC;
	Fri,  1 Oct 2021 11:12:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WY3gR3t7XdXe; Fri,  1 Oct 2021 11:12:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C78160645;
	Fri,  1 Oct 2021 11:12:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23AD31BF5A7
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 207EA40520
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6G8qU3keV1kU for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:12:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96EE54052A
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 11:12:38 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id v195so19241630ybb.0
 for <devel@driverdev.osuosl.org>; Fri, 01 Oct 2021 04:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=cwYHKV4Nv1uy1+o5jfqgAAWN5reft6xsYAW/4An/l0c=;
 b=FLV56WTo21D5QpT2IfiFcgfqQ7xkAa2e1tXC5YItfNtWPDF4Gf0iWDK4AhVSLk4xy0
 SA3kAcOAPDFwlP+U34Bc8dfMod5gqM5oo6tqkdm0qZCgOVF6MYSavSY9z/oVjkdesltE
 1YqTrJ0H86yLJ8qtHWZNIErby2jlCYS1p1Tdz4J/inmaab2D7LFwDuf4NIZJpF6XEMmq
 3I6YLY0Om6bIchUJyrGyJk70Zuu83luAg7Z12N/rwt14WTQV0536loXTMuRgVv0hn30A
 O7QKaNHu86Naaj36IM5d8Dunyg1dBAFgmgp+HZ0gqzDyq+OSURsLwoz8IBnDTAJHfELn
 3l8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=cwYHKV4Nv1uy1+o5jfqgAAWN5reft6xsYAW/4An/l0c=;
 b=tjRlsSuO2/qObx51CaowjcMk//o31Z8QW0opPJc+5f/9jVQMQkkyXHLfocAMVuOJLp
 EkuVLCQherDSMgx+FPEHmeOG/hflUanmuhRW2+249z6f34VfqKpe9lbv+mhjDRcLuWDV
 LqyRsP3EqH9WKNhECJ/Ej+BGzqJpSKI7/jL78L2ZSdCqZksxDmXEzYpZHN77ZEhg7C5c
 6q4u5iqQ7jMP8TR+fPDoqIMUPL+4b7AS+oKdqbqpwq+JQlnPVygqLZi9mkXPp7HblSna
 GJv/AXcUX5gltV9jCsfI0iDCX302vx8B980/7kS5H74Hh0J66e7trzBEyJQwfFs8QO/6
 ioMA==
X-Gm-Message-State: AOAM530moGloMIRocwIfjrG1MbX9UFfp58lgeRr26neZ9ACkiQmu4pTk
 Q89ZMceLat6XxTR3FPxh5RjHE4v5uEqDUCtaO2I=
X-Google-Smtp-Source: ABdhPJwjHc2lxszwmAEg+WipVaRgHZSCwI/s0VtEcyImguhZU52einVo1k+E79y7rll23Ep9XdVoXfqDaruB9J8XabQ=
X-Received: by 2002:a25:6705:: with SMTP id b5mr5483531ybc.116.1633086757067; 
 Fri, 01 Oct 2021 04:12:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6900:ce3:0:0:0:0 with HTTP; Fri, 1 Oct 2021 04:12:35
 -0700 (PDT)
From: JEAN EDO <jean79529@gmail.com>
Date: Fri, 1 Oct 2021 04:12:35 -0700
Message-ID: <CAO-KmWsbTjxHXtdoGv9PuTz7=cE=GBy1PVKuE_MBJVPZN57sng@mail.gmail.com>
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
Reply-To: jjeanedo1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear
My Name is Mr. John E.Thomas. Contact me for more information on the
transfer of ($7.9 million dollars) left by my late client from your
Country. I want to present you as a business partner and next of kin
of the fund. I will give you the details of this transaction, as soon
as I hear from you. I need the information below:
Full Name:
Address:
Occupation:
Age:
Personal Email:
Personal Telephone:
Best Regards,
Mr.John E. Thomas
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
