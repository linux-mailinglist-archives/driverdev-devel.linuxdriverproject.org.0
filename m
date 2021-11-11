Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5431544CEA2
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 02:10:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B37FE4034B;
	Thu, 11 Nov 2021 01:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCRbXbxBaaQS; Thu, 11 Nov 2021 01:10:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B26C540190;
	Thu, 11 Nov 2021 01:09:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 879591BF28F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Nov 2021 01:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76DC740301
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Nov 2021 01:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1D2iVdSYAT9T
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Nov 2021 01:09:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0928B402F5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Nov 2021 01:09:46 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 t5-20020a17090a4e4500b001a0a284fcc2so3324907pjl.2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 17:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=eEa5vj7WwHeZVJjkH4Ry8NKGI1K1mj+ivRNS67+5rW4=;
 b=Ok6F7wRS79Nr+iaOGofR/B4ZbPGnmox7hp36WGINnVnGN/gRM0thpSsI6Ihx0obD/P
 USEw79S3SlMRs7TgCAGwODCV3N4Ur2I/6SZXEoUyDmqHa4NTE3Z6OaWzV4eAZQ2hCuE2
 Ki7o8816xqKmGKzp65VwXXJi1Fn0EDWk7L0GCVe5SFb+z6rcKTJJa523P7pkSQlLqn5L
 AMAQ4qm+eRdexKxgsagiFVpTtEl3ib8gmBRD22QIHTyr0OBYkDlENMeFgw6INxdehFBi
 n3d8Kby7H2+Zvq1xdJfLKKLsaNGoQgdggTJn1/vEDvHbLmseWjzjpun+VNzhY5WOU6RD
 R8wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=eEa5vj7WwHeZVJjkH4Ry8NKGI1K1mj+ivRNS67+5rW4=;
 b=itTTJZfafKVlgWiIdoJVbkYSr1MYnRbkQI6ICkLetLYqZwSizPs5UE+5JjF+z2saar
 ZzyYL6NxoGKFbtYhd0MGDXcAv+PUfhUCDtxNpB8pDj/ODSs6WPOeuFpK3uGNxstv1zlO
 4G0Irnez0tNbAJ5NWBADJhw6N9Fxm5A4HLtsW4JjaXZ8tEVS5aR5GdAGRYx+XbMVos/t
 BgvDZZ3TnfT1ZVPY5amWsJRgefYHVisaLohADB+lM+qnKp5H1vB21k2MI1ec/Ns/UyY4
 vYhdMFUgEH2nx6cJSL1P+cUOpJxB+h510AXREDcLAKsAbwhbV0K01Lrxa10WsIkhs7w4
 tXBw==
X-Gm-Message-State: AOAM530y1AqkdI3/e1thCkIigaOCDP9Miwo1TXkUBiG0BQYQw3TUJ573
 zM+MlHeMYeWdA1kMpYgCVYSflzOhlNGaNjUuxqA=
X-Google-Smtp-Source: ABdhPJyezlY6O9jhSd5B05qgkqDObnQciP21n8TRCa2F4tO5WufCNVOyPxMY4UzNSbl1HcrcDwGSamMlC1Ld021nLic=
X-Received: by 2002:a17:902:ced0:b0:142:189a:4284 with SMTP id
 d16-20020a170902ced000b00142189a4284mr3847085plg.79.1636592986488; Wed, 10
 Nov 2021 17:09:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:f952:0:0:0:0 with HTTP; Wed, 10 Nov 2021 17:09:45
 -0800 (PST)
From: MR MALICK <marymartial65@gmail.com>
Date: Thu, 11 Nov 2021 02:09:45 +0100
Message-ID: <CAH4RW=QHe7TF5MupaXEL9ZQbi1O2Aqh0CYuQkXhpZ3jfzjekmg@mail.gmail.com>
Subject: WINNING NOTIFICATION
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
Reply-To: mrsambamalick@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LOTTO WINNING AWARD,

Your email won 2.6 million dollars, Contact Barrister Marcel Cremer
through his email here ( cremerrsolicitors@gmail.com) to claim your
winning fund with your details as follows, your full name, your
country, your home address and your phone number.

Regards,,
Mr.  Malick Samba!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
