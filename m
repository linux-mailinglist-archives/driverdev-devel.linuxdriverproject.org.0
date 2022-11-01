Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A89E6151BA
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Nov 2022 19:45:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6335581468;
	Tue,  1 Nov 2022 18:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6335581468
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SwQIOEy6_762; Tue,  1 Nov 2022 18:45:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2632581458;
	Tue,  1 Nov 2022 18:45:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2632581458
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E92A91BF358
 for <devel@linuxdriverproject.org>; Tue,  1 Nov 2022 18:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEC974095F
 for <devel@linuxdriverproject.org>; Tue,  1 Nov 2022 18:45:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEC974095F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XlqPn33TK5Dc for <devel@linuxdriverproject.org>;
 Tue,  1 Nov 2022 18:45:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A01640912
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com
 [IPv6:2607:f8b0:4864:20::a34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A01640912
 for <devel@driverdev.osuosl.org>; Tue,  1 Nov 2022 18:45:51 +0000 (UTC)
Received: by mail-vk1-xa34.google.com with SMTP id e2so7725771vkd.13
 for <devel@driverdev.osuosl.org>; Tue, 01 Nov 2022 11:45:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EVhOsP+6KbvTRYBlom1mWJjP2e8CWZCw8ljsmoo30js=;
 b=4vjOe5xi7rgAd54IinrzE9SqwSxZb9WW3DlSxiIgum/C9nV6vUsropEricsn85MLpH
 ehL62pxQ28YBBKeGRGnOUNLsY1kczs7/WHkK3V724VOwmKoBM8U31s1XWXZB1xo2f6He
 q2etEJEN6JIhOOQJqqzL3H2iUcESXy+iB4iGYtu/pR91MosTbJZQcPfe6MpnOUmX1ngE
 VaZs2CdPr8Ue4abx+Sg1PF1yODvFY8YBCPpBHKvmaZwCwU6fFszCHcPAlxOaBS7TeH8s
 +JDUBf3/XcBjd4p+m4xUl07JQ2PiTpyO0VgmIIbRL0z15kLbjUgn6gmofGp0+CQMYjVt
 qBOg==
X-Gm-Message-State: ACrzQf077HqzqAVpOif5dyl1uNZ24fZCcm4yWf4cOW5DyPWJQseWQ/Ev
 OVK1OIobSuhc7n7BWh9kxbnt/cT5eUqRqB0a3kI=
X-Google-Smtp-Source: AMsMyM6I2JE0kLKBNE7QU9JHs7zHZX8yIDGnIDtImhahmvbfaU7yrj1iL0esaScTa22VsPZC6UBIdhGVZg++us7YhBM=
X-Received: by 2002:a05:6122:179a:b0:3b8:592d:c2a with SMTP id
 o26-20020a056122179a00b003b8592d0c2amr3340768vkf.7.1667328349830; Tue, 01 Nov
 2022 11:45:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:ce07:0:0:0:0:0 with HTTP;
 Tue, 1 Nov 2022 11:45:49 -0700 (PDT)
From: Garry Myles <pakachijanet@gmail.com>
Date: Tue, 1 Nov 2022 21:45:49 +0300
Message-ID: <CABY1at=_eCS_xcaG=M1Xx9P06fP6D7Uwohv8n3Tu+YQJpf8O9A@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EVhOsP+6KbvTRYBlom1mWJjP2e8CWZCw8ljsmoo30js=;
 b=daxxiZgEpdMSbxCRmEmtnnSJvj8Zt6kqnHxvmjiOpAfteX4bPLHqH2ZkjljCL6vj00
 OfhvNzOpYe3sK2CcoHoRDe09YRPWy64O06vNxqlNryoy0jIusnnhAKp0zqtVv7RqSBjN
 5ypEc5t8tXx71QM6VQ8YA/sj6p7BP4L8TIfBAPLB54I6Q15wbGIDCwfRD4iv9Wu/cZvr
 zqlKa6aZxEILdqU6ZqkybT2sIVj6tbkRf2UP+/cotOKvMmubV1OTYzYH1rkJsZtwLnqx
 rYm3lBBPPAHkxTEO70lDFxDIW6HZqw47BKWZbyiJL0Pmc41F8gt3uMzQb+hm6C8I0Xet
 SSHA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=daxxiZgE
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
