Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8793F6C77D9
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Mar 2023 07:26:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0E13408C0;
	Fri, 24 Mar 2023 06:26:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0E13408C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KhO9FqK1rUWE; Fri, 24 Mar 2023 06:26:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A99FF401AD;
	Fri, 24 Mar 2023 06:26:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A99FF401AD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A98641BF295
 for <devel@linuxdriverproject.org>; Fri, 24 Mar 2023 06:26:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 817C241E5C
 for <devel@linuxdriverproject.org>; Fri, 24 Mar 2023 06:26:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 817C241E5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ybiHXeJUNyCI for <devel@linuxdriverproject.org>;
 Fri, 24 Mar 2023 06:26:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAEBD41E55
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAEBD41E55
 for <devel@driverdev.osuosl.org>; Fri, 24 Mar 2023 06:26:18 +0000 (UTC)
Received: by mail-io1-xd2d.google.com with SMTP id z1so393440iot.11
 for <devel@driverdev.osuosl.org>; Thu, 23 Mar 2023 23:26:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679639177;
 h=to:subject:message-id:date:from:sender:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tSWmB1jZ3ESoGBmYPnJE+eLvwdYmCact0wWJbKUbftE=;
 b=b9yjvIfQNfclSNznWEIiuUlo4kwVRhH3ov8PmGE0rQw3dKSk+Io8oORSX0/3y9SkT7
 WSh/Y4PH52rvH5KRcl7QcM3Ne8kPB+HElsn2d4ddHFbghKdQE+q382OkPzZ8WVsave6k
 gb7uP1PscrpuQjjE70S2uSO1efdOLhPbo34+JPZyGDxJxkg4X9t9uaoRJESY6DX/mA+4
 tGQzBZCxg5nvKdOnLyMosHIjE3qzoZbPwfv1VvfzWEjEzKIhT1LXswlVB0xiPkhz2wuU
 YUb/xJkSABCYIPqSFn0VIs3GDc+6c+0TxWMzDaDWqARPLO6yyYwxfW956rz66bDE1BjB
 kNsg==
X-Gm-Message-State: AO0yUKVpX8FoFupVwt97hPaHQ6uxawrw2gb8QY2Nf/e0nINN44p91uIu
 JGjsllYCLPyrsz0Ujkmd0zjswXA+0GMjVUznUYU=
X-Google-Smtp-Source: AK7set/PRE0QvuK2+NvbWuZ2Hi0shTHLQ3u0AsCH15IKRCBU5HaHULsECqA+1pTW4iol/QBUjKVeLwz4TTIFk2UG87M=
X-Received: by 2002:a6b:500e:0:b0:751:96ce:ed7d with SMTP id
 e14-20020a6b500e000000b0075196ceed7dmr4721024iob.1.1679639177641; Thu, 23 Mar
 2023 23:26:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:9a09:0:b0:3a9:6545:143a with HTTP; Thu, 23 Mar 2023
 23:26:17 -0700 (PDT)
From: "Mrs.Mary Anderson" <amrsmary16@gmail.com>
Date: Fri, 24 Mar 2023 06:26:17 +0000
X-Google-Sender-Auth: FDcjn7FZr4RMdlT7q0Ldw59t6Oc
Message-ID: <CAFHNOMMBXRN08Gw8A2Sy76jezZOZjPxt9ZjjMyLm8_P6_cTbMw@mail.gmail.com>
Subject: Dear Friend,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679639177;
 h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
 :to:cc:subject:date:message-id:reply-to;
 bh=tSWmB1jZ3ESoGBmYPnJE+eLvwdYmCact0wWJbKUbftE=;
 b=Srca3Lf8yfjA9UiEE783XAaWBVi80ehtndhiPf7ieADCqtm6vr/rbEWn+ILmY95NZG
 QzRoNZk0y/NAKUHkKRGC6DuiiXhq5Tt7lnZjOYw0KFvwbnx9mNhneImqWtK32gq/3U6V
 NwqCw1j/JHJ0K8iMMqDXVPpcL4w5Bu6lmxQHc3k20YlI8oYBU2TD9ADH1IBHcs/S8+VM
 jkyn2Z9O7hkyMprHDXnP477GyhuysmIruy0jsTHEldGJJgorLRMh9mvGPzh6htAGco4k
 DdlWOs4nLYWnZ+ifL+CL4r2ETyAZpFty6B5q2NjxeZ7pZh0eEDuHCu1B2E4pZQHnoXYd
 uI9w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Srca3Lf8
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
Reply-To: mrs.maryander1947@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I am Mrs.Mary Anderson . It is understandable that you may be a bit
apprehensive because you do not know me, I found your email address
from a Human resources database and decided to contact you. I would
love to employ you into my charity work, I am ready to
donate some money to you to carry on the Charity work in your country.
Please reply so that i will give you further details and tell you
about myself.

Yours Sincerely
Mary Anderson
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
