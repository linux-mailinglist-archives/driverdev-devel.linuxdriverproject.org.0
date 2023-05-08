Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8EF6FB351
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 May 2023 16:58:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5ECE941A49;
	Mon,  8 May 2023 14:58:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5ECE941A49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mXk6qzrTd3F; Mon,  8 May 2023 14:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E8DA41C25;
	Mon,  8 May 2023 14:58:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E8DA41C25
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AA8F1BF279
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 14:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E80C68439F
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 14:58:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E80C68439F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c3Ej8IFI9eCH for <devel@linuxdriverproject.org>;
 Mon,  8 May 2023 14:58:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FD70843A2
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FD70843A2
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 14:58:26 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id
 5b1f17b1804b1-3f42379d553so2274445e9.1
 for <devel@linuxdriverproject.org>; Mon, 08 May 2023 07:58:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683557904; x=1686149904;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hvylHcPwsBXB0nmQthlymsngVMpocAeJGjYYSYMz78s=;
 b=fcVQ7QaweAzV7HgS5WJEsV3/VNVkqkt0RPsvM4uNCQwn8iZQvDgvMrPwpMhRjsWSaY
 EgyGxYDhbSFLJDaRy3R1VTrVCNPoro1Ck2W/Wcl3uzFiSvYUj68FqMBnSj/csRkyE5Aw
 rb3KxRSlVS+kAOUvny62bUM8I60iBvQij4kZ5FL0MAQN4nkUbhygTxHgYJv3iTAZa87L
 J94zLEiPRfHB1OhlIAd4JzkRSthmcFIgep/5tB3+kQPhKoLPyIfWGapzforycQospMYn
 3ixkVorY8c+LLQW1l73xC0XtTIz7w+uSYEwduJhXRpUaYomNxKklgF8ZHYYvGf8m/JBZ
 31Ng==
X-Gm-Message-State: AC+VfDyU6TTCTklUUfiMqMwF0lXbJ6bgc6Rlm4d/K8llDjSOomMrLNB+
 +lOmbdnNuJ9NVpFXrEaz9J6w8uWPZT/HzbUWKbQ=
X-Google-Smtp-Source: ACHHUZ45A4jB+Q9fFZcaePBkzobFt5FPt68Sgm9sEZuTlQxrCf6/zVxcgJAO3EPB8CQ6kG3MtQwllYxll6zKGY38sOU=
X-Received: by 2002:a17:906:72cd:b0:965:d4a0:85bc with SMTP id
 m13-20020a17090672cd00b00965d4a085bcmr7313878ejl.3.1683557903611; Mon, 08 May
 2023 07:58:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7208:238f:b0:65:eab2:ab94 with HTTP; Mon, 8 May 2023
 07:58:21 -0700 (PDT)
From: Karl Heinz <frtjhfdst0@gmail.com>
Date: Mon, 8 May 2023 15:58:21 +0100
Message-ID: <CADsq0_3Y0=mW+AOv+xkSP8DbYM00JeLUuLGJ38Wzd6_mvJJwgg@mail.gmail.com>
Subject: Good News Finally.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683557904; x=1686149904;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hvylHcPwsBXB0nmQthlymsngVMpocAeJGjYYSYMz78s=;
 b=fClvg0mMMGxdA9zxIBADXAWTyvvBoNBaUfxxQmx5lGi0YE5wtIVWLwzbMmLVqu8wNS
 AiUN08jDMeRCLArNXn6CB9GlIha0gZY9d/89oFsemLQZA9Br6I/y+uuiZhVEkvjv3pAm
 JhuojBya6vyshJ/HK6ijivhXxHXC/wYGHrlGndSqgFVzFZWQuZLIKHyUaDHxNoJkUiJb
 Rvjla/wd11MN/1KrhpZ5080gHc0fEtyXYWei3cI4Cy0qi8aKLaLUlgtWNbnrsSEhBKau
 l/1iy/Gt9C6uJ+Uyw2ENDREiuaHjleYnVcYakTNlmtXH1UUBzN5oxKVwAB0PeHZPQgcr
 N1ug==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=fClvg0mM
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
Reply-To: rev.francisedward@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend.

You might find it so difficult to remember me, though it is indeed a
very long time, I am much delighted to contact you again after a long
period of time, I remember you despite circumstances that made things
not worked out as we projected then. I want to inform you that the
transaction we're doing together then finally worked out and I decided
to contact you and to let you know because of your tremendous effort
to make things work out then.

Meanwhile I must inform you that I'm presently in Panama for numerous
business negotiation with my partners. With my sincere heart i have
decided to compensate you with US$900,000 for your dedication then on
our transaction, you tried so much that period and I appreciated your
effort. I wrote a cheque/check on your name, as soon as you receive
it, you let me know.

Contact my Pastor now on his email: rev.francisedward@gmail.com
Name: Rev. Pastor Francis Edward

You are to forward to him your Name........ Address.......,Phone
number......for shipment/dispatch of the cheque/Check to you.

Regards,
Karl Heinz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
