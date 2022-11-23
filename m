Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E61636B15
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Nov 2022 21:26:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69B49610A4;
	Wed, 23 Nov 2022 20:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69B49610A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mNXFmTBUyDOV; Wed, 23 Nov 2022 20:26:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 262F2610A0;
	Wed, 23 Nov 2022 20:26:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 262F2610A0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E92C1BF59F
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 20:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47287401E1
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 20:26:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47287401E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tddJ38dA8p_u for <devel@linuxdriverproject.org>;
 Wed, 23 Nov 2022 20:26:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04F4C40147
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04F4C40147
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 20:26:09 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id be13so29833931lfb.4
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 12:26:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6+SY6H+ASUzdWQAFa/AimOgEOUr3m9mP0SkfLMEBDEY=;
 b=Jl1ZWgbmfkpsncz3pB1RdMPoL8VKkcQtwx4NQjhpoifWP+IMon0aHNLaC+dNLhBAcp
 maI4W7Fz/zoZRuuJLNpY90ftzqkNnrsh0z0zn5HvFPoAvFGV7TpHFvvW+SGK2E+5pI9j
 6m1M9HvtnIdA9ln4TQaZHYpngAQmgc+ju/98658Bklko2iHO9HwNu6IhTidtcPqYzqAC
 4xX2Gwyp7NHzdqn9mEDei5zrubgTZgtq90h2mN+RN+duQRsislYE8D5YYhE2bJu+hy42
 3G5CPv2MAtVgFD8AtFDFw0/qSKiJyCUJwERgsv9yubWf9Nwb0l2ZuZ8VtNpJnXKYyn0V
 5H4Q==
X-Gm-Message-State: ANoB5pnGin8qbnmF8OI6FUbe2IJ9HuGBzfMTgnxlPqt5leKl1DTfK0Du
 84ROn7VLBIyStnMSy05vF5PQSdmDMd8226ouFrAiaQ==
X-Google-Smtp-Source: AA0mqf7ADnrNqxBDpnqHEOFPEDq4bmZfZg5LDEblHGw3d1kpr4ieIUohtl1V5QxQQERMef6N8eiEIyW/s5T+s2EYLbE=
X-Received: by 2002:ac2:46f8:0:b0:4af:5088:8fa3 with SMTP id
 q24-20020ac246f8000000b004af50888fa3mr10538465lfo.538.1669235167770; Wed, 23
 Nov 2022 12:26:07 -0800 (PST)
MIME-Version: 1.0
References: <20221110203405.611600-1-dualli@chromium.org>
 <20221110203405.611600-2-dualli@chromium.org>
 <Y35tVQb2y+gRdfpb@google.com>
In-Reply-To: <Y35tVQb2y+gRdfpb@google.com>
From: Li Li <dualli@chromium.org>
Date: Wed, 23 Nov 2022 12:25:56 -0800
Message-ID: <CANBPYPjqO0pVQseqGXfi8sNVOu=ZfqUF8WiDD01EF=SgkenbMg@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] binder: return pending info for frozen async txns
To: Carlos Llamas <cmllamas@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=6+SY6H+ASUzdWQAFa/AimOgEOUr3m9mP0SkfLMEBDEY=;
 b=UZGOJ5khgyJP8rK9BaiD4cIFc5szUoeBQHbpMdpb9L4zwdOBYtINiQzjO3mafWueBO
 MerEVi8InCMcbt5K+8Qs9DYaxovdSV9Nr2TdztfIXBrios88jzuI5Z222qdpp6vUuw+/
 PerkGoS1BDOMdMobaw0nHB0HgCQELqCxXM54Y=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=UZGOJ5kh
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, brauner@kernel.org,
 kernel-team@android.com, tkjos@android.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 surenb@google.com, hridya@google.com, arve@android.com, smoreland@google.com,
 joel@joelfernandes.org, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 23, 2022 at 10:58 AM Carlos Llamas <cmllamas@google.com> wrote:
>
> This looks good. Could you rename the new op to signify the frozen
> scenario though? We might have some other instances of pending
> transactions in the future so might as well be specific here.

Done [1].

v3: rename BR_TRANSACTION_PENDING to BR_TRANSACTION_PENDING_FROZEN to
    signify the frozen scenario and avoid potential confusion

[1] https://lkml.org/lkml/2022/11/23/1472
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
