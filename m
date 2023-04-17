Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8236E4587
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Apr 2023 12:48:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 318038215A;
	Mon, 17 Apr 2023 10:48:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 318038215A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pcRsxJu4d--8; Mon, 17 Apr 2023 10:48:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD69682171;
	Mon, 17 Apr 2023 10:48:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD69682171
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 193B91BF30C
 for <devel@linuxdriverproject.org>; Mon, 17 Apr 2023 10:48:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1AB141A43
 for <devel@linuxdriverproject.org>; Mon, 17 Apr 2023 10:48:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1AB141A43
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6bB4V-2JZJu for <devel@linuxdriverproject.org>;
 Mon, 17 Apr 2023 10:48:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EF07419D6
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com
 [IPv6:2607:f8b0:4864:20::333])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EF07419D6
 for <devel@driverdev.osuosl.org>; Mon, 17 Apr 2023 10:48:02 +0000 (UTC)
Received: by mail-ot1-x333.google.com with SMTP id
 g38-20020a9d12a9000000b006a5ea7b4be4so884477otg.3
 for <devel@driverdev.osuosl.org>; Mon, 17 Apr 2023 03:48:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681728481; x=1684320481;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=p4cWer/k6UVZULU37g7QXbcQT0+v3xdiLsKdWEmhhJ0=;
 b=KWa7+aOo6f+9YrvoIgFtBOJSn3Rxo3BOevKJjyefNzdG8sLW0G+RW8dIaB+xm5Fehp
 CbfMfnQSU6d62W73l3+GHvOT/YbxwRsp5/G8nzOp9A3C2qQb+5QMveepJsQO88k7WRKp
 B+JN79cGe1cIAqvyh0lUs1bLKqX4mnnXFcm75te/jAvRFMoZ8Bt0/87cY0vyBLxDBAnE
 a37TAI96V3+VWNvbEyuqbP16PPpW3NZbSclquHwfy4GH7VFBJrM4jcVTDmYz+kCjLFzy
 i1qRSxgbIQO4H5nzWWr9jHJpGIWnaUvEDm51c1J73vIOnKOc8gVq8Vj39Yr1sCMDNy/D
 sAzw==
X-Gm-Message-State: AAQBX9d+Q8qXPUmP2kFopCxe3lSMdWGMQ1RVHCW4/IzxNw29+QLFjp+9
 oI98UpYlXxvbgEn8D/38HWhK9Xa2GwkbJw1Bmiw=
X-Google-Smtp-Source: AKy350ae5KpTWUeuNHFHpL1J9cKaNT1XZtCuBJ0n4nSwbc4FliBesG1nwLzDI7uVknXGvfyFFba38PIuvc8OXDKgCjw=
X-Received: by 2002:a9d:303:0:b0:6a5:e99c:849b with SMTP id
 3-20020a9d0303000000b006a5e99c849bmr924923otv.0.1681728481262; Mon, 17 Apr
 2023 03:48:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6850:4b20:b0:480:899d:66bd with HTTP; Mon, 17 Apr 2023
 03:48:00 -0700 (PDT)
From: Hinda Itno Deby <barr.williamboafo1@gmail.com>
Date: Mon, 17 Apr 2023 03:48:00 -0700
Message-ID: <CAK0gjPgY244wWrApr8yrXoT-AeQ20dZ61GVR_q0F=aSKvXbcAQ@mail.gmail.com>
Subject: Reply
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681728481; x=1684320481;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=p4cWer/k6UVZULU37g7QXbcQT0+v3xdiLsKdWEmhhJ0=;
 b=pfj+y3xvNENvX5B7Fxkum7HGDQmeb9jWJzGrHCPDV2lvkbHFErtxq9+3i79Uq5FEP7
 YcG25+frUL+U1vTpiaS/x0XFIW6zYdnvCZC6bdL2RwfYJkPadS8Akp+qFyLpxnBqye3Z
 Vhrs2q7UdNVceGe18LtYHlEu1JeZscR1209hSZq6d4HUKkfozR4VcmK+4r8HlAHZc9om
 m/tb3H8kVVmqTQLGy5jRV5qFH4Kqkd13JZ0pl0AiJACiEVL1fYk8vEWRNeKLQ2Rbu7lt
 HpKVYzPc0SGnQdXGJZoH5BpxCwGHEXim+relzzjbqalnfAbY2aNzMmbQKblbm66oR91V
 LJsw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=pfj+y3xv
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

Hello

My name is Hinda Itno Deby Please I want us to discuss Urgent Business Proposal,

 If you are interested kindly reply to me so i can give you all the details.

Thanks and God Bless You.
Ms Hinda Itno Deby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
