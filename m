Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 856085371AC
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 May 2022 17:45:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4375541A42;
	Sun, 29 May 2022 15:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zgUsJRPX06Yx; Sun, 29 May 2022 15:45:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C528241A2E;
	Sun, 29 May 2022 15:45:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B325A1BF29A
 for <devel@linuxdriverproject.org>; Sun, 29 May 2022 15:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A262682D40
 for <devel@linuxdriverproject.org>; Sun, 29 May 2022 15:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KB-HwQesK3R7 for <devel@linuxdriverproject.org>;
 Sun, 29 May 2022 15:45:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com
 [IPv6:2607:f8b0:4864:20::32a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68EBB82CEC
 for <devel@driverdev.osuosl.org>; Sun, 29 May 2022 15:45:36 +0000 (UTC)
Received: by mail-ot1-x32a.google.com with SMTP id
 l9-20020a056830268900b006054381dd35so6263992otu.4
 for <devel@driverdev.osuosl.org>; Sun, 29 May 2022 08:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=33H7bzlF73boyoKARvolMJlGymprQ+hHPrvlaQBxLsY=;
 b=oh4rr95iQh6Mc7BvJW/B5Gu/VJaKNiuu/UnrbEw077vRcURHt7BZTHmB1qHJVuMU96
 gaNrxdhKiJJAnxq3iAYwSTDrlmkgGVkCFjplUP9nlyI5kyMH+/mkUZ0n5KlNeYOE6Te0
 quind0SOn4OrCTrllVVckIXnN7xWRlv67F0eX1tgMwS7NvB7OZ4416OnK38iBQ1s6+26
 ZRM9AMNuqkQK2+wSn9ersPyxHjnp0/eQCADUn0FY12+s7simRtw1VQxruUiNesWNK0Jz
 tiS0ZT2VxCyhFOkXEgL9s2AhzxCfbCvYk/GE0IO9KXRkp9ys70wlMIGrXnbOMBHysMof
 cBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=33H7bzlF73boyoKARvolMJlGymprQ+hHPrvlaQBxLsY=;
 b=JQKCiyoc/CXIcHvJJ3gVtJHo36oRtfatCEzif9r1XgNfSEn5NPrsHesgU8zimrPRwk
 Bbf3WWE59+3HPriUP1kzoRQ01yqu74wauJq8thlw7ZhMB52fQjLpTEqdIH5FLQkYbSKO
 qcJeBCamB4GpGFHzC2nQi/l213WMrhNyIhB/51RNLNhdLYi9uxnnC6JPgkoun8SJ1/aR
 +KRDAjFKUbNIOZk7EsOQb7NSQnjr1n8zWmNMa6xExLEwm6x/fCxT6jIRqUeSTwY1M+rQ
 QsqELm7b/ybH0AlVzYGUcPWZuwoDsbkvQobdVJQChacTBzXsdfY8FkDJCztSWJVGOElQ
 dJhw==
X-Gm-Message-State: AOAM53204WVEoblqMV00y6cvzeg5XE+qcXrvU85CouuoVyNNN8dOTAZ5
 gRmxhKugQYyxTpB1iyUjo9aDKIlLbyeAGztgmkU=
X-Google-Smtp-Source: ABdhPJx6tyAyu0y7TsG3UgLqUk/HGZax1wGC55H62sSKLJZUxoEj3IW/wf640WU7RQDWbbYB65lbTVFRufwND9yrlR8=
X-Received: by 2002:a9d:6e97:0:b0:60b:3a60:142b with SMTP id
 a23-20020a9d6e97000000b0060b3a60142bmr7421215otr.217.1653839135217; Sun, 29
 May 2022 08:45:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:560a:b0:a3:6e92:e156 with HTTP; Sun, 29 May 2022
 08:45:34 -0700 (PDT)
From: Martin Baker <m.evelinemartins@gmail.com>
Date: Sun, 29 May 2022 15:45:34 +0000
Message-ID: <CAEvQOXT08SQ9UqnD5jrD1SU5-mtxOiKSp8X7nN=Q1a2O9NX4fA@mail.gmail.com>
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
Reply-To: BAkermarrtin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,


I wrote to you this morning because I have something to tell you, please
let me know if you read my previous post today.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
