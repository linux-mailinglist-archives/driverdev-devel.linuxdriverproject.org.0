Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60248573E2F
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Jul 2022 22:51:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 842AB61423;
	Wed, 13 Jul 2022 20:51:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 842AB61423
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S3wbBYRlktFy; Wed, 13 Jul 2022 20:51:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43A0E60AD8;
	Wed, 13 Jul 2022 20:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43A0E60AD8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7AFD41BF2FD
 for <devel@linuxdriverproject.org>; Wed, 13 Jul 2022 20:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 526EE60AD8
 for <devel@linuxdriverproject.org>; Wed, 13 Jul 2022 20:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 526EE60AD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hSKpUDOmCWHd for <devel@linuxdriverproject.org>;
 Wed, 13 Jul 2022 20:51:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA72961356
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com
 [IPv6:2607:f8b0:4864:20::1043])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA72961356
 for <devel@linuxdriverproject.org>; Wed, 13 Jul 2022 20:51:20 +0000 (UTC)
Received: by mail-pj1-x1043.google.com with SMTP id p9so63280pjd.3
 for <devel@linuxdriverproject.org>; Wed, 13 Jul 2022 13:51:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=h0ZslgqQ94UM3iGDYCZGEx8ZwvbYHY5ZrQARiO/Kpbc=;
 b=ordBJk0ETWOaaVeA4Oavc2kqminq2WKlinKUtLVskQoJjpLYJSJu8t4KfNEHXcokR/
 9ElzlEbeiorsy4B2BY1exzcmxGPAPSwluOa1uNy7crx2+LPAxWjYKdD7oqPckHXD9hsx
 NxsxEW/y43Jzv3Lu3LQy1r1uxCRIATrZmasb6sS+5DRYzN/Y+kvfSb5yWhfAgMEd1ru6
 VJEjxUerMNZzY87wZdmhBvR0rjLsmTmFRzRtesZVsuQO0jAlCJD1aqpNFNWfH+pZq0rd
 mBIlvr3CelDVWBsP7hbAek2TllraH9E+EqYln0t/cDqPuIP7q/bAXPK4vH6UreF9wd3V
 7tFg==
X-Gm-Message-State: AJIora+20jcRddBlEzrrHk1TX4522m4dECtZfsdsL+cjIDUAvpJpUxrO
 wi6nbrZS5kjqBRune/lCAQT5Z7F2Pql2oI8NzIs=
X-Google-Smtp-Source: AGRyM1s6fG/eUS0p4uEW64lATGuEyw1X7ct54zVBI6agBw6KmzNJiceYKuOKS6J8NCLnPNtbnFMqhPabThiWjvEmN/w=
X-Received: by 2002:a17:902:8a8e:b0:16c:66bf:1734 with SMTP id
 p14-20020a1709028a8e00b0016c66bf1734mr4904237plo.161.1657745479956; Wed, 13
 Jul 2022 13:51:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:626:b0:42:c3cf:981a with HTTP; Wed, 13 Jul 2022
 13:51:18 -0700 (PDT)
From: Lily William <savadogoidrissaboursouma@gmail.com>
Date: Wed, 13 Jul 2022 12:51:18 -0800
Message-ID: <CAA6zzonfr_L0do0oRPEgZRxsxei5EkRut=Jj1CtVtCcpkiH=Zg@mail.gmail.com>
Subject: Hi Dear,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=h0ZslgqQ94UM3iGDYCZGEx8ZwvbYHY5ZrQARiO/Kpbc=;
 b=BWUcXaQcIraum9Ultttqfa7/nbUy/cpnAM7wLOHOwlMOCnM1qN29UoSLad4NiThAVu
 BkNFcIr6PEx2NuDi4UJHpkB10PR3kEQivxIiSy+JUkm3oFrgiVSvZvvjlVHKDLWvG2yF
 Bw2nGISWNwwEi1JhYfgdIij3rDbmrG8r5ZLoDNm816qBR0c56P24QlGxnGIb7hLZbTQx
 mPC8jNv0lvsHLQzjuEtPkx0WfdpLQg97LhBxJnLF5G871/P9z8nXWN/nXrEKvfw1LvXY
 sbOILyOMbe+YcUB7mjWm++bMRNbLa/laYM5c1c7xH0/FTGehXmrhy02X4g5qWLJU+Ytx
 R2qQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=BWUcXaQc
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
Reply-To: lilywilliam989@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dear,

My name is Dr Lily William from the United States.I am a French and
American nationality (dual) living in the U.S and sometimes in France
for Work Purpose.

I hope you consider my friend request. I will share some of my pics
and more details about myself when I get your response.

Thanks

With love
Lily
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
