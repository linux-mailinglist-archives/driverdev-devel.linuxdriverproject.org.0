Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3987E6187A5
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Nov 2022 19:37:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CADA41816;
	Thu,  3 Nov 2022 18:37:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CADA41816
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FxETh6eFb_Ov; Thu,  3 Nov 2022 18:36:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 025FD417A7;
	Thu,  3 Nov 2022 18:36:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 025FD417A7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 300D41BF3DE
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 18:36:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18E3881F0E
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 18:36:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18E3881F0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H2AJ7GmWUaw6 for <devel@linuxdriverproject.org>;
 Thu,  3 Nov 2022 18:36:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A148A81F02
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com
 [IPv6:2a00:1450:4864:20::643])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A148A81F02
 for <devel@driverdev.osuosl.org>; Thu,  3 Nov 2022 18:36:54 +0000 (UTC)
Received: by mail-ej1-x643.google.com with SMTP id k2so7712420ejr.2
 for <devel@driverdev.osuosl.org>; Thu, 03 Nov 2022 11:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EVhOsP+6KbvTRYBlom1mWJjP2e8CWZCw8ljsmoo30js=;
 b=kHjsEPIPgpbuxEA1eYO0392G8MpBJIdt9BtIY4JKCfOYqP30yewVBB/kP5J/kWCj6g
 xgFC9ssIe4uW9VqIQj96oigKmaBZEy4y905bPWuiFSC8Z/S8u1jIe2XWcye81uO2fUCT
 GEFRNiaMRWHRucpniNrymLf7u4pi3WV9xQoYJMp+sG+38OksHwhoo8MAgb7hsG6eudwc
 REriU+kVMJKKm3yhRQSpUVGe9txevxQKk3avJHsA09IVyF7Ka5sdk2BtxgwFfJJCFGdD
 i+rHRE2dkfTGgOWa10S+74wnCGzl+KPkK3aXt8EHpn4mtFj09M9+Qn6jH4FwbUnhPrco
 aEKg==
X-Gm-Message-State: ACrzQf2EcpplhOY9xNb1oxAH88+hV+Fb8K9lFMKXIQejOMrZBzdsA1Xi
 7Wu+q8NDvZXMou2B0GkQSXl7GsDDleKpqGYdDG4=
X-Google-Smtp-Source: AMsMyM6jXWG8YyW72ozYsbzmtuWV7MA++S/49umGtX7hC2qMrtMC4YDOCB986qHV/CtqVF5IpWowA3sg71Hja6v+v5M=
X-Received: by 2002:a17:906:4717:b0:7ad:c606:349f with SMTP id
 y23-20020a170906471700b007adc606349fmr24853437ejq.214.1667500612579; Thu, 03
 Nov 2022 11:36:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6408:300b:b0:1b9:e27:8317 with HTTP; Thu, 3 Nov 2022
 11:36:51 -0700 (PDT)
From: Garry Myles <aremokehinde8@gmail.com>
Date: Thu, 3 Nov 2022 21:36:51 +0300
Message-ID: <CABX=rPbkr-TGoY8uS==cCD3K2=SyfrFaiZbX4vua_s=WdOwL4A@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EVhOsP+6KbvTRYBlom1mWJjP2e8CWZCw8ljsmoo30js=;
 b=NjWhFrza2H9G7beMpaPJ2EB3r+dBf16OYO7vH/pOhti2HR+L2NY02khAGqF67fMKBu
 I5oMxWV3eDkDjbg8BWdf/9T9mGzIy9YtVlt02PQeV4FegnOs+59TZOanmN2ipdVAmgik
 Rhtsab8A1kNTHjh44HRK2Wu69lBQHRObAuz/bOCHTSc4B9UqYLWpS7APrDVgdpBjd31C
 +pjgM3Z0fIjMmV2EgCej7agGDGmYzGq/B59R6xN7r0EtdRlFVC8DWGOMwDMxjUy8TFWY
 S7j7oojooay2sne4X2xRupmZw1peCl9XFsQ0dLPRYXUx3W6yksOKfvVLK9ioDtastSw5
 7xmQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=NjWhFrza
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
Reply-To: garryfoundation2022@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Good day
You have a donation of $2,000,000.00 from GARRY CHARITY FOUNDATION.
Please contact us via: garryfoundation2022@gmail.com for more
Information on how to claim this donation.

yours Sincerely
Garry Myles
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
