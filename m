Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 028926A3F06
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Feb 2023 11:00:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2612881E10;
	Mon, 27 Feb 2023 10:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2612881E10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3TPgVzpu6IHk; Mon, 27 Feb 2023 10:00:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E921781CA7;
	Mon, 27 Feb 2023 10:00:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E921781CA7
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06ACC1BF3AE
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Feb 2023 10:00:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D37DC60BCD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Feb 2023 10:00:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D37DC60BCD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l5giIvsbrTdt
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Feb 2023 10:00:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28D3F60BCA
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28D3F60BCA
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Feb 2023 10:00:47 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id ck15so23576364edb.0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Feb 2023 02:00:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8/zz6d9RYf2TK114iUOyILWp/9/2ZjKWBG2+xh+z1eg=;
 b=jFlcz4/+M7zSSW5UiUFl1q8Vd6xN7xweM0CQHSabxcLVZQ3CS4+zFmRZzRUmShd6yF
 CZ7ax2AxcvEVBlCq7bN3uYboruaQ8K/VjYF3CwyCfMAnkrG2iwrHhmkH/oZDx7nzNziI
 zkG9o3XDib3/6Bs0mvhYVCZfooclXzJQGC3PbuxwBnhMEXEUW6lr9GsL7uBMRAf/TLTd
 cT9qAc2Q/yseV2SdMavMLau6L6T+jvUfJuF6EsYcQu5OxsIVLpIH2xLvsV3K0GhoL8rF
 MlXx3zdrkKlbyiCo5xo3dDh9fTbetyWAYLjuX99mqd8Ktfm83ZKqDW6PBttUwDeRnXiP
 EHUg==
X-Gm-Message-State: AO0yUKUwOIKVghCLAxuQ3/+YlnzPbknyB8GgE/u6reo+i2P51dH6NllY
 +0gIw8PVx3e+nZm5SzgYqlVRg71dTjGYtdYMBYA=
X-Google-Smtp-Source: AK7set8wjrgRDi5aeT6ujqqVB4f623sqQSQrFMdorDd5WJVGQBbzBNjsbcoEfT/MA+2uJbaURgRXRQEN+D6MomFH/+Q=
X-Received: by 2002:a50:8e19:0:b0:4aa:b918:44cf with SMTP id
 25-20020a508e19000000b004aab91844cfmr11726717edw.8.1677492045122; Mon, 27 Feb
 2023 02:00:45 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7208:2251:b0:64:9db7:fb6c with HTTP; Mon, 27 Feb 2023
 02:00:44 -0800 (PST)
From: Hinda Itno Deby <celestineamewu024@gmail.com>
Date: Mon, 27 Feb 2023 02:00:44 -0800
Message-ID: <CAH8U-_d-xqeWGhuLW=E3+d+=viTYVo1AKCfPdYqe3vihGT7aeg@mail.gmail.com>
Subject: Reply
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8/zz6d9RYf2TK114iUOyILWp/9/2ZjKWBG2+xh+z1eg=;
 b=hciubo7kJgMtrwqvrWGjPzB9zpOvaLpVPq9qb8zp5EWGDzZ+Z9E3Dbmb8/yYeycprz
 ElWB6hNsOONCKQCsJ+JBCpmV2Nf5nCJ3jvetpgjsJQxWw/ydk5GmttCO6llTh39n36eQ
 TgaB2J/wK2MWypxlC3L+wFGeWynfj0T046T8dSOoO/KwAK3Te3dZnhqU/AHkv4f/F1n4
 lwFA1l3RxFcbopoGEGp0B72xMIk+TOadYGgtpympTuyY+P2V6YhPmT6iTJCarKZxoZlr
 dbcN6UiqcqDeHl3EVIxhCBiMFNlUZUVhwEeil+1Jm1TA+B1GhubqQQOJxcHiymdnReWJ
 9Lag==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=hciubo7k
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
Reply-To: hitnodeby23@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello

My name is Hinda Itno Deby Please I want us to discuss Urgent Business
Proposal, if you are interested kindly reply to me so i can give you
all the details. Reply to My Private Email.
Thanks and God Bless You.
Ms Hinda Itno Deby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
