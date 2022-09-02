Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4F35AB66D
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Sep 2022 18:24:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 534A460D55;
	Fri,  2 Sep 2022 16:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 534A460D55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lorUsezDD60O; Fri,  2 Sep 2022 16:24:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1131A60D54;
	Fri,  2 Sep 2022 16:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1131A60D54
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F9971BF3C8
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 16:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE03860D55
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 16:24:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE03860D55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CtIsQwIQh0Sm for <devel@linuxdriverproject.org>;
 Fri,  2 Sep 2022 16:24:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4799660D54
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com
 [IPv6:2607:f8b0:4864:20::112c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4799660D54
 for <devel@driverdev.osuosl.org>; Fri,  2 Sep 2022 16:24:12 +0000 (UTC)
Received: by mail-yw1-x112c.google.com with SMTP id
 00721157ae682-333a4a5d495so21078957b3.10
 for <devel@driverdev.osuosl.org>; Fri, 02 Sep 2022 09:24:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=osSAgKM1j6DRNQcQXA842NXUQk2GubTJs0svjrfNTko=;
 b=HeswKhOuEQMxvULjJMDqvbeq2WQ/EhZCEPO9flkhfrMlno1ESYZOHtGzWPYSkRtf3N
 aS0i0O3l+rT2eWtx+oWwFjcMa8/xGoKw2dPdRRLCgAsxb8f3jm/j3kbN42s9OoJyqrpT
 5q9cA4Lp7KlOsips4RyqWGZEB80nsysJZM8RGPwyUN9JUYRLy0qQpBa3Gg7mo1bk5uNA
 HXrMBa23K6AvunVLmqezhXjErc2ZY+kL4Obi5MabXWKC7lukZ2reQva3KuC7th/aJ+wN
 f3fXWURptoubCvXGEKyRxgSPiU/LLmF7giC8aC+qyxn1TvKxwk5YlCP/171tGx/FjbbL
 o9Hw==
X-Gm-Message-State: ACgBeo05pWg4XkdpICVpngIwcOg7QLRY8fQQiuiHWeREAf53dF8/FCjK
 4sdy99LyXf81aU6AR1yjuIITFroQooKCgMq/4ZI=
X-Google-Smtp-Source: AA6agR5Ro+PGHtweeejaNtgoqCmvKSqeaTp7jaP5TE88BgXs6b0E5xPsLIvtNM2UCDIqGffvPbmFyh8Mii6O3kH2xBk=
X-Received: by 2002:a81:598b:0:b0:33d:d632:312a with SMTP id
 n133-20020a81598b000000b0033dd632312amr27935494ywb.501.1662135851209; Fri, 02
 Sep 2022 09:24:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6919:4381:b0:d9:7890:eac1 with HTTP; Fri, 2 Sep 2022
 09:24:10 -0700 (PDT)
From: Michelle <michellegood044@gmail.com>
Date: Fri, 2 Sep 2022 16:24:10 +0000
Message-ID: <CAJ5e1jb1fK26zn57x=8meG=WpWP3ZY_1JqSZjoB0Nz+XA+eRgA@mail.gmail.com>
Subject: Hello
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=osSAgKM1j6DRNQcQXA842NXUQk2GubTJs0svjrfNTko=;
 b=Z+Xp8bM+Tc5Cb//1+J/3WiluH1x+V94WeK/DDQE/0Gzhaz4CaJyi7fUlneLsoZiYTA
 GIJtFzw+gEwfLK9UxXf2P4bp0PK5BXx84BLtjLXeQ/yeYHp/pQmBS3/wpg4yLVuXSQE7
 j4CcnwBNzXisqHb7cYAN+en4GLEewnpCEkLpOpO3mf5YIaQ94y8t/ucf7ZlGjc7u+cF5
 UIM5zFBRymzhc7hCwbRbq6ACtPVQEREDo+7Sj5yXa9d+6gSWM+UMpVwYx//73JPTe/c6
 o7yZ77zLmQipDXl4N2IQP6MG1of3+eNvt+yUiFJKl7nyFgG5EDf2k/KnEDfy+gIrK6Q0
 kcUA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Z+Xp8bM+
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
Reply-To: michellegoodman45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hallo, ich hoffe du hast meine Nachricht erhalten.
Ich brauche schnelle Antworten

Vielen Dank.
Michelle
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
