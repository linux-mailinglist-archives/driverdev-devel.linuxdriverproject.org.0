Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7339C734D53
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Jun 2023 10:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC1B081E34;
	Mon, 19 Jun 2023 08:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC1B081E34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l1f9mOFL-TPV; Mon, 19 Jun 2023 08:14:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B347A8142D;
	Mon, 19 Jun 2023 08:14:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B347A8142D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC9C71BF591
 for <devel@linuxdriverproject.org>; Mon, 19 Jun 2023 08:14:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5F44404DA
 for <devel@linuxdriverproject.org>; Mon, 19 Jun 2023 08:14:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5F44404DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMvifxp_IDGI for <devel@linuxdriverproject.org>;
 Mon, 19 Jun 2023 08:14:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26FFA401B1
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26FFA401B1
 for <devel@driverdev.osuosl.org>; Mon, 19 Jun 2023 08:14:53 +0000 (UTC)
Received: by mail-oi1-x22e.google.com with SMTP id
 5614622812f47-38ede2e0e69so2046888b6e.2
 for <devel@driverdev.osuosl.org>; Mon, 19 Jun 2023 01:14:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687162492; x=1689754492;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rJ/7Kbo9gs7zs3QTF5nFKkJrBjocKGAtdax9LA/wsFg=;
 b=WbOmkkCJQ/juQAD9XQVP+9b7KmKZXqdrTsqP+yMQoaK+ixzA3a2C1FPnl6q5agCGtk
 Bwg0GeLJi6KhMjxYtn+kuY/cCqEMrVxnXMlZnyO93ZB7RRCLqpQloBpRj6K5y3GXalx8
 stfeSm8peUTol3R2jV2EdCyQO60XtS2zKXs43KYRHJQilj0Zzdq/Aq/SaUh8UrwIAOTn
 CcgwUTlBJcMa89mAOA4xnCY9HAqLi+otPX7lPOabZT6oVWNFLpwZHpRk+sLMcMrezMqm
 ob5r5D/loQs2gjnJUAcKJxg5DnVvbAYxwVcWdyLH+Ip/IkhTVSIam6Qt9orUSs8hxjME
 Rl0w==
X-Gm-Message-State: AC+VfDw7NvCK/El7j3sd/l9lZAncL861PIN5QDeBa+cO6pWv8NL+7ikm
 5eYOP7PeFF5fXDUC5toiwiirD/NEpKiXasaR3Os=
X-Google-Smtp-Source: ACHHUZ6gBLx4NH9cZ6UThAbHP/9UMoYMmPUQrSEdOIi38EPe7t+3DFpGtUChcuuq1Gm5ZGOC9zSPzL2r9cT4iNhGGZs=
X-Received: by 2002:a05:6808:6398:b0:39c:8bc5:f8db with SMTP id
 ec24-20020a056808639800b0039c8bc5f8dbmr6693095oib.37.1687162491819; Mon, 19
 Jun 2023 01:14:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6359:6e83:b0:127:8127:f692 with HTTP; Mon, 19 Jun 2023
 01:14:51 -0700 (PDT)
From: OFFER <diazanna810@gmail.com>
Date: Sun, 18 Jun 2023 20:14:51 -1200
Message-ID: <CAO6W-YLZC8t7fAc6s5=KCjJUV2S48JR8gjJde-xf00=-WSAtsA@mail.gmail.com>
Subject: Greetings From Saudi Arabia
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687162492; x=1689754492;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=rJ/7Kbo9gs7zs3QTF5nFKkJrBjocKGAtdax9LA/wsFg=;
 b=FDISoEFTwML/+p368lw1P/Cn3vgdll9kixDZ2w6lnoYYAp8s8Z+hqKuaOVevpLCOMI
 ph54uOPb2e9ngwvgg8My1IiADYjqT7Qwp7Oz69iR839wWcx/TVrIJwC7/hAXVlvKxhQG
 EUviG/ZRkcdHGA8fZ6+HvO3OJd89syyb1I+HhxUMtX+CAiQlWf6TnU7bdcaLAWdzYWNV
 XpNsAUONjxeJJTofE8ExIdPiMBQjRZhzVOpjPKeKiQ4rEcDGKIUibD0EVAeTNLSqcAct
 kePtpwl4f5GYqXWFP0QKYYTjFIjwD2pxvjcNVYVcQwOtl/PcljQlRJvPjB70ZVOwvUqI
 GHVA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=FDISoEFT
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sir,

Need funding for your project or your business ? We are looking for
foreign direct investment partners in any of the sectors stated below and we are
willing to provide financing for up to US$ ten Billion to corporate
bodies, companies, industries and entrepreneurs with profitable
business ideas and investment projects that can generate the required
ROI, so you can draw from this opportunity. We are currently providing
funds in any of the sectors stated below. Energy & Power,
construction, Agriculture, Acquisitions, Healthcare or Hospital, Real
Estate, Oil & Gas, IT, technology, transport, mining,marine
transportation and manufacturing, Education, hotels, etc. We are
willing to finance your projects. We have developed a new funding
method that does not take longer to receive funding from our
customers. If you are seriously pursuing Foreign Direct Investment or
Joint Venture for your projects in any of the sectors above or are you
seeking a Loan to expand your Business or seeking funds to finance
your business or project ? We are willing to fund your business and we
would like you to provide us with your comprehensive business plan for
our team of investment experts to review. Kindly contact me with below
email: yousefahmedalgosaibi@consultant.com

Regards
Mr. Yousef Ahmed
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
