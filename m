Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C86570F01
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Jul 2022 02:41:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAD3B4017C;
	Tue, 12 Jul 2022 00:41:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAD3B4017C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B4GVC8BRVH5o; Tue, 12 Jul 2022 00:41:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81B4B404EC;
	Tue, 12 Jul 2022 00:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81B4B404EC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A39F1BF9AD
 for <devel@linuxdriverproject.org>; Tue, 12 Jul 2022 00:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0470160669
 for <devel@linuxdriverproject.org>; Tue, 12 Jul 2022 00:41:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0470160669
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pZ4PWDSQWXSf for <devel@linuxdriverproject.org>;
 Tue, 12 Jul 2022 00:41:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F5A2605B1
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7F5A2605B1
 for <devel@linuxdriverproject.org>; Tue, 12 Jul 2022 00:41:03 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 v4-20020a17090abb8400b001ef966652a3so9886418pjr.4
 for <devel@linuxdriverproject.org>; Mon, 11 Jul 2022 17:41:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=cMyx4cPc/J1/jaWpypvVedAVCbtRuXK6l+iwp4JRvdo=;
 b=c3xZ4pgHs85VT+gqNgxJPjn7Iwa06BZV9n16VK8F1sJ+TJCICqShf2ivoVvB8jG0q3
 BBAz+SPLfW5pI74YZkNlrEVLQRdzIoojIVfDssUl29fA+2VUCUKyKtBpz+54PZkNNQ91
 SHeeMpQvPqkr1wOZCC1QYFiRE/SLjuNzqQ15rz4ud758GSPV/ylck1bgnA5kAlukRTLF
 BFErJAyA0LXCz4moleavfH7QQKtEjpdS4GZPgyVj52y2bhriIR95O9hrO5E9vUuWwq1H
 yve4LcLbOkAze2YKA6gCVHd7tvmqNjqpmH5k+Vhioryg2zFVe4Iky39rC2wJs0rUiUqS
 lUMQ==
X-Gm-Message-State: AJIora+EsdS7FRoekwx1Wv1vbwITune+Yjx1tKX8SLbFJip2bI8TNDh+
 hrTtlnwZmrl6QIH7jfIOV4+H+CWcsS9TwSx4zHM=
X-Google-Smtp-Source: AGRyM1s5JHPszmqApBAIydJe+lJr9Zw0FznVJoeCEyYVHjOJHA+7qAm6VlpjshJ6dBPEPdmI1qgV8NDkEFZlZgg3+mM=
X-Received: by 2002:a17:902:c7d5:b0:16b:ea78:4eb4 with SMTP id
 r21-20020a170902c7d500b0016bea784eb4mr20958604pla.65.1657586462801; Mon, 11
 Jul 2022 17:41:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:902:d2d1:b0:16c:43fb:a364 with HTTP; Mon, 11 Jul 2022
 17:41:02 -0700 (PDT)
From: Antonio Guterrez <6purplepots@gmail.com>
Date: Mon, 11 Jul 2022 19:41:02 -0500
Message-ID: <CAAbjot1Og61feUZ5iZuarAVmtvb6hexwwTVwXHVzSaqhN14V_g@mail.gmail.com>
Subject: Contact your Agent Now
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=cMyx4cPc/J1/jaWpypvVedAVCbtRuXK6l+iwp4JRvdo=;
 b=LNyqY2c2GRKmXPqB3MvSL1jZe9GVdGrrgHP+dDuSMuaadvPNSiwBicmCdrfMxA25Q0
 k/UMbT5MWm/QCEgVHGl0j5Zj7kfvovlLyzGh6kuKN1bb/8DswtCxXV/L0iRPwofJRsxq
 EfupbXE9VjoCzwdKmIgZ9LQlnIpKzC9mx98mMBO34zd8djJOaEfVHvWjzaElaOvLKTsI
 +fKit8AE91bMsm5ezjmtdynx5iIPV/SnfxmSmII0vq0NLExeyExjYdZNPsYzClWNYOw1
 47Q1V6Li/+dX/CqOy4N+tZslOi+RxGN3jWGUdEpchloEvx2FhWMW0v4TT9CJd6bSUR1U
 s/3Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=LNyqY2c2
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
Reply-To: antonio.guterrez@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Sir/Madam,
UNSBG/COVID-19/IMF-4587/021/USD$850,000.00
Compliments to you and your family. This is to notify you that the
World Food Program (WFP) which was set up in 2020 by W.H.O, in
conjunction with the United Nations and International Monetary Fund
(IMF) to approved the sum of US$850,000.00 Social Benefit Grant
assisted by World Bank Group to your email via Microsoft Email Account
Random Draw to assist on the fight against this Global COVID-19
pandemic crisis.

According to the payment instruction, the Business & Payment Division
of the International Monetary Fund (IMF) have been instructed to
regularize the immediate release of this approved US$850,000.00 to you
through the nominated banks in the USA.

You would be contacted on your response for the release of your funds
within 5 banking working days.

Antonio Guterres
UN Secretary-General
C/O David Lipton
Deputy Managing Director
International Monetary Fund
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
