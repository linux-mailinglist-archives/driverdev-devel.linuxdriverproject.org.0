Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9816FB356
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 May 2023 16:58:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92FAC41DBA;
	Mon,  8 May 2023 14:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92FAC41DBA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UEOPyU-u4Df7; Mon,  8 May 2023 14:58:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09E7A41991;
	Mon,  8 May 2023 14:58:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09E7A41991
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 16CC91BF279
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 May 2023 14:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F16C4611B5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 May 2023 14:58:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F16C4611B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5mF0M6QlcMja
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 May 2023 14:58:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49BEB60B3C
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49BEB60B3C
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 May 2023 14:58:51 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id
 4fb4d7f45d1cf-50c079eb705so1218784a12.1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 08 May 2023 07:58:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683557929; x=1686149929;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hvylHcPwsBXB0nmQthlymsngVMpocAeJGjYYSYMz78s=;
 b=DTj0cuuKZojeDra/1mETFY3oxATr/ce54+h7M4X5n/08bdH0wBlh1TfLDn0viVuQAQ
 EYjpH533hxFh9owaGz81oip8IGwjK6nwYKcEu1HKOC/7PfB5atWYpguInQdxmvwm20OL
 qmkzdFAXL9k8b3R3FB6hySN35OdkTGkchU8/eMfdZXgs1nk341WXvqivpCP8ucPV4PPJ
 G0lhjaaaPEJ8eTp0npkbXey16qlTxU0iadf0DpxVxPk0eyAuXnN0nlq/zYVpZvaz2X5l
 y+bpzhwNJ4LfDQm55KgwvD9dn7YxPnCEOBMxoN81T06cB/3Oq0LZy/CIxKvHQh6NQxIi
 gymg==
X-Gm-Message-State: AC+VfDzfWsIKmMuI/5z9j62gYxvj3j4pSN60ijSvdwG0rwW/jsg/Rq0K
 GN04MzxLaOt1nRhfHPQnCY0tHQdJ0++hD411hvU=
X-Google-Smtp-Source: ACHHUZ7XOGZdseZXGL1IhceJxCaqnXyrc9o62qbXtB7lG1RAdT7aSsRaD0W3mDswglOO2lPei2yKWTjy36gT7InD6P0=
X-Received: by 2002:a17:906:64d8:b0:965:c518:4681 with SMTP id
 p24-20020a17090664d800b00965c5184681mr8169198ejn.7.1683557929079; Mon, 08 May
 2023 07:58:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7208:238f:b0:65:eab2:ab94 with HTTP; Mon, 8 May 2023
 07:58:48 -0700 (PDT)
From: Karl Heinz <frtjhfdst0@gmail.com>
Date: Mon, 8 May 2023 15:58:48 +0100
Message-ID: <CADsq0_0p9VZmMhQ-duXtRu_rF2rYLOWwKber5M7-AJp0fjXnSg@mail.gmail.com>
Subject: Good News Finally.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683557929; x=1686149929;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hvylHcPwsBXB0nmQthlymsngVMpocAeJGjYYSYMz78s=;
 b=B/KSNqwhRJyqFwEBIedb3EiXXaTBbek5dvg+HOH6IRc8hOCZRx0BpXB0rvzPWEtVCf
 dl5Tpr7u5LjQtWBJKweHACWHw3XrvutxwzaHa3ogLdA+FUx30nqY9qa3HQQQMYU/VIcy
 jkxIsC+gExCBRkpLlV8dp3s9TOyUtoNxsgAvnr3DuLRezQzyd+XG6IJgR7IEekBx0AC1
 tuJltF0L3K7UEioyOKI9nVns9WZvfdIFcwOFf/9ySJHRvt8hBXMnIGSCTkNYRP1qmVae
 hPxDMdtbpMHxAoPGMPbtG2wZ/vqLHPzcDqmMa5JjWxOd5Y4SQb3TvTv4AyZ2YVBv4IG6
 8cXw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=B/KSNqwh
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
