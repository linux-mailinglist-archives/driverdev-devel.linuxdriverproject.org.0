Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA1150E49F
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Apr 2022 17:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CE1F4021C;
	Mon, 25 Apr 2022 15:41:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QL8jqJjJxgaV; Mon, 25 Apr 2022 15:41:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AD66400AB;
	Mon, 25 Apr 2022 15:41:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 784EF1BF295
 for <devel@linuxdriverproject.org>; Mon, 25 Apr 2022 15:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74CDC41545
 for <devel@linuxdriverproject.org>; Mon, 25 Apr 2022 15:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U4rpZATCs9SU for <devel@linuxdriverproject.org>;
 Mon, 25 Apr 2022 15:41:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1EC5141527
 for <devel@driverdev.osuosl.org>; Mon, 25 Apr 2022 15:41:53 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id d6so13828053ede.8
 for <devel@driverdev.osuosl.org>; Mon, 25 Apr 2022 08:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=n2DbQ8TDuIWahPOk6FWkJmZkS0bFylPWgxdRlda8MX8=;
 b=Rx2TEaiN2Ip6Dc/IN9vt2h5jQ8EmmQalkuCW09lPPqDbtO6LfoUINvEaVg3hqRY73D
 xXiLNN91DKbaFshIvPEjZKvJnau2c1er/ZYEiJ6WDrmRORpdrNlXzws1nVZciLBVN9E8
 nNpcq74FCJbK3IzPTZSjy7xF8R7XiSP0qNapM9O82Kv2yr35tgCX8bw5hJ0A4L6MONAg
 bDXfR8iQ65dOmb+SX4EE5zq2Sw5NjDu5seP3hptRVdhv4r/01A/+WPhtWtNGOwggTKwO
 RXM9sJtPoYBdfIs+vRARyfzq19d+2YCFhej21V7yC4QZaPLrmL2VnCVR7Zn5MDYn6KWX
 RoAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=n2DbQ8TDuIWahPOk6FWkJmZkS0bFylPWgxdRlda8MX8=;
 b=SqrDvNEE4YOM0xmme+ooQ6xd+JtMJLbPmBv079gmlH8oO8a50bze0dyaJq7SmEXi16
 fbZqcZ8Xf3PEpAIOQjYgEkU9gInzKhdTBxAR0y1iM2zgaBVkn8qIxsRfOlavR6gq6qLF
 2cmAsKT1CDR+8GtibgdCjjkQitEmdTLvhK3yROyuIeLjSmYMRc9xM2FTWYa6Y5tSQDZM
 OZy6ekYWfCYPYVkf3AeiZC+7PZIb3u310LViUPm2Cb8TWmRwEwpTtuDCIdFj8oTKkYje
 eGnzsF3hQrs7NNwM1pXu5Uqw+W5AavTVJWGaqPxwgjxbOBbXDY0/00PPRJwCrn5/oBuj
 ak3w==
X-Gm-Message-State: AOAM532PIx9qorcGN9r3g7HFt1kF8JQmIxGmNnZVykMwniKyVdqXGsHi
 /xQJzIlciEZq90UHIClVB+N3O9Y1ViS6SLGMVz0=
X-Google-Smtp-Source: ABdhPJwfoaWkBWin6z0QoQTcbSpHRKFaVLDZ20TPUh8TvhF5X9qP8CPh3KQaRvSU7OZRQx+eWIs+s3EA77pcer0mIqw=
X-Received: by 2002:a05:6402:154:b0:423:dba8:c7fc with SMTP id
 s20-20020a056402015400b00423dba8c7fcmr19691562edu.346.1650901310968; Mon, 25
 Apr 2022 08:41:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:8792:0:0:0:0:0 with HTTP; Mon, 25 Apr 2022 08:41:49
 -0700 (PDT)
From: Mrs Aisha Al-Qaddafi <wilfrednikiema@gmail.com>
Date: Mon, 25 Apr 2022 16:41:49 +0100
Message-ID: <CAHUKfLmu8Rqc-=YFRahviGEE9L-BTPF=V3Am7GXXXMGJPpjkxA@mail.gmail.com>
Subject: Dear Partner,
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
Reply-To: mrsaishaaqddafi@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Partner,

I came across your contact during my private search Mrs Aisha
Al-Qaddafi is my name, the only daughter of late Libyan president, I
have funds the sum of $27.5 million USD for investment, I am
interested in you for investment project assistance in your country, i
shall compensate you 30% of the total sum after the funds are transfer
into your account, Reply me urgent for more details. Please kindly
respond quickly for further details through my private e_mail
address:mrsaishaaqddafi@yahoo.com

Mrs Aisha Al-Qaddafi.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
