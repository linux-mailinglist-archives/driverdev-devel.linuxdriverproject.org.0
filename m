Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDAC55BA92
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jun 2022 16:48:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 721C783F7A;
	Mon, 27 Jun 2022 14:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 721C783F7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pq3VgF1GcA6S; Mon, 27 Jun 2022 14:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35442832BF;
	Mon, 27 Jun 2022 14:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35442832BF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99BAC1BF2C2
 for <devel@linuxdriverproject.org>; Mon, 27 Jun 2022 14:48:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 66ADC83F7A
 for <devel@linuxdriverproject.org>; Mon, 27 Jun 2022 14:48:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66ADC83F7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XEgG52lrM6QQ for <devel@linuxdriverproject.org>;
 Mon, 27 Jun 2022 14:48:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29E8A832BF
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29E8A832BF
 for <devel@driverdev.osuosl.org>; Mon, 27 Jun 2022 14:48:06 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id h65so13100605oia.11
 for <devel@driverdev.osuosl.org>; Mon, 27 Jun 2022 07:48:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=3+Iin4Pgh6qrIjoUzk2IGtA6BXvnzoj6M5yzMXmvrxo=;
 b=7AzaZdXdXF0xrc70D1XzSe1/Ly0h8B56JVS5rxf05fGysWVQRNLODBcqEs4k+p9vYU
 hiAulXecnEQ3ZUWzepfzS3nN5j2gt7szCWaEr3R12gUGGVhEl82VdNQqyT1DZmfHwya4
 x+PWCCUWD7b6RTTC/4k8g3UKRV48qQw1BSbRnkK/KyR4C5PKCWhEm8OEG4Mj2bK4Nmtw
 P51/ztOzsmKG5PRSbLiQz2Bn8Eg6x/Esyi4OGrEsu860ckWdhCJ8D0Ytv5vgIa99LPDA
 AL4VpMl9Zsb/JmDoCXz2TRzve+RoqiC/BiCzY34TdwGUJGik/jQf8FynBKhXkqpRg6dF
 4CGA==
X-Gm-Message-State: AJIora+nViNtaXlPv5H0au/kp4zN+3Iymjsbuk1Ic0GabnH1c84kA6Sl
 vz9MDaSOrA6NLUHki5TvnMspnTB//17zfW5VfBM=
X-Google-Smtp-Source: AGRyM1t5SD3PtO/B1PLu+VW6+nAJNe4voADbDRe0F5ApsrCphx5qd6VGF7UfysgXiE3CQIw4L6RAlKF4jzLxVjkLaGA=
X-Received: by 2002:a05:6808:f93:b0:335:1832:fa5b with SMTP id
 o19-20020a0568080f9300b003351832fa5bmr10518896oiw.13.1656341286037; Mon, 27
 Jun 2022 07:48:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:d81:0:0:0:0 with HTTP; Mon, 27 Jun 2022 07:48:05
 -0700 (PDT)
From: Ms Nadage Lassou <oluwa8kayode@gmail.com>
Date: Mon, 27 Jun 2022 08:48:05 -0600
Message-ID: <CALGXXDG-Xd=9o=ttgfgA3-E82hbVCORN3QEjesgYrtoyHYRdFg@mail.gmail.com>
Subject: REPLY LETS PROCEED.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=3+Iin4Pgh6qrIjoUzk2IGtA6BXvnzoj6M5yzMXmvrxo=;
 b=LgYJa8ReDurYBqdsQAQA5Yreb4ebeNHc5ZHUFsvJxtnXjeXaOB1WkCOOpp1F9Eaars
 4ArJ1WI9clkRrI6uPQ6jxslJYAoiFSMlqYMV1oaDbWvSjBfERzKF6OlDeST3sz5wfOcg
 xa7pwGdt4haD1n8cmFvaiMpBpi7ZC59/iQJzaCQv6vChVlQfpVvO3kj/KIlTBLvaZCY3
 f92npz5LIiVUPCKHHBXJTbdVMMtX8SN9G72mi+ZFxbbzV8tjbX/wV9OOFFrTVDvmuIAZ
 4ph8nNWC2DLpLY56Avz8OenX3xGJHDfe3znkzuHxmwbxLPYANq8WIUN7PqQxNXsIREzj
 nWTg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=LgYJa8Re
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
Reply-To: lannij47@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

I am Ms Nadage Lassou work with the department of Audit and accounting
manager here in the Bank(B.O.A).
Please i need your help for the transferring of  (US$4.5M DOLLARS)
abandoned fund to your bank account for both of us benefit for life
time investment.

As soon as i here from you i will give you the full details for the business.

Thanks.
Ms Nadage Lassou
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
