Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE626E4125
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Apr 2023 09:36:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63BB741C25;
	Mon, 17 Apr 2023 07:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63BB741C25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xt0RArZ4VEEi; Mon, 17 Apr 2023 07:36:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAD1E415A4;
	Mon, 17 Apr 2023 07:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAD1E415A4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 853591BF30B
 for <devel@linuxdriverproject.org>; Mon, 17 Apr 2023 07:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5EA43405B9
 for <devel@linuxdriverproject.org>; Mon, 17 Apr 2023 07:36:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EA43405B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U9fBy7YC3MHG for <devel@linuxdriverproject.org>;
 Mon, 17 Apr 2023 07:36:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3318402CE
Received: from mail-yw1-x1142.google.com (mail-yw1-x1142.google.com
 [IPv6:2607:f8b0:4864:20::1142])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3318402CE
 for <devel@linuxdriverproject.org>; Mon, 17 Apr 2023 07:36:43 +0000 (UTC)
Received: by mail-yw1-x1142.google.com with SMTP id
 00721157ae682-5491fa028adso731707067b3.10
 for <devel@linuxdriverproject.org>; Mon, 17 Apr 2023 00:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681717002; x=1684309002;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=8IZPeuBu+TddG/gFHfabs8BzWrlAI42EBZ5TpI86rvg=;
 b=C1rfAn3mV1HxCiP7LscCcXiTnMHKDmvcM0h+rXIABsWLc0Zu82wjs7eHXPyrfXtZ02
 9pRQFVOQpV48llDJ/6FfnehfGWT2YBP3oOws78yFrCS9HhBQiFHY9s9bT5w7HylloG4g
 yhW0hdM55CEV8y66MbpZ79rg9Df6ogsG18gsyfvA6/avpr/fOYeREGxnvNdnwK2k5DIw
 2kFdZRZNLgyxv5VhUo5w5sjnYfDhWUHDQzZIZVXhhScDfXqUI2w+fr7oSVf+gzxAtWBd
 0R3wkkasaBgZRSCjtsldl55+Ar5Ha7vsgoptp4XDrYpcm6Sjj9Pxt7dyp82Sx2YobCs6
 TLew==
X-Gm-Message-State: AAQBX9eb9ArsI5AjauBHWul4R0IizHXa2zPV2Phstvqe0vXry097WuVP
 kQnuD7HUfghnQMQQkab6o1m380VGLCet0ZOabmg=
X-Google-Smtp-Source: AKy350aHCWi2UoNU4i8rtIkmgM3Zn2JfMZW7yEGMyi0UqIEH2yE05UZTEktPxHPdF7rqygmw0xsPkHCCN06Uz4R1V+s=
X-Received: by 2002:a81:4411:0:b0:54f:93c0:4ba8 with SMTP id
 r17-20020a814411000000b0054f93c04ba8mr8791959ywa.2.1681717002441; Mon, 17 Apr
 2023 00:36:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7011:a1c9:b0:348:ff8:ecc9 with HTTP; Mon, 17 Apr 2023
 00:36:42 -0700 (PDT)
From: Edward Effah <edwardeffah122@gmail.com>
Date: Mon, 17 Apr 2023 00:36:42 -0700
Message-ID: <CAN+Jmr9GoNTZwmO7VNxA-ubW+MAE+iHvaOKvSoWw+ZtkkyUPeQ@mail.gmail.com>
Subject: Good Business Proposal.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681717002; x=1684309002;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=8IZPeuBu+TddG/gFHfabs8BzWrlAI42EBZ5TpI86rvg=;
 b=rNSl5NjPsbwn6iwYw/fwBGJrZhk90I0GRjtlcY78DVtIaZJgr8aGhVCDS+HZPFGREW
 fhq5tZrYBn8yiDR9pXFybYxEuCMqFW31gyLkKazXvfUdAe6iUGSyXJYTDmLNip0ZzSDY
 GhBzSXkE0+S2J1A46rFs4Hgb0qPsvBdaQD2NYA3+8Iy/PzSc66fIpeWkII7ZUP3oppwV
 rCq4yEKXRRqI6jxzAkVqUd7DpBtVKJ1dFx2BPYFXvGyMt1G10cz6pHEAkPfJrJRuVvJL
 2iM/3bGcdKSRHb2XUnxU04UzXNErx/gpJPCKwaHOmisNcxSOdP747xgWWREMhNYQ26kO
 oG2A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=rNSl5NjP
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

STRICTLY CONFIDENTIAL

TRANSFER OF US$35,500.000.00

We are making this contact with you after satisfactory information
gathered from the Nigerian Chamber of Commerce. Based on this, we are
convinced that you will provide us with a solution to effect
remittance of the sum of $35,500.000.00 resulting from over costing of
job/services done for the Nigerian National Petroleum Corporation
(NNPC), by foreign companies.

We are top officials of NNPC. We evaluate and secure approvals for
payment of contracts executed for NNPC. We have tactfully raised
values to a foreign company for onward disbursement among ourselves
the Director of Accounts/Finance and Director of Audit. This
transaction is 100% safe. We are seeking your assistance and
permission to remit this amount into your account.

We have agreed to give you 25% of the total value, while our share
will be70%. The remaining 5% will be used as refund by both sides to
off set the cost that must be incurred in the areas of public
relations, engaging of legal practitioner as attorney, taxation and
other incidentals in the course of securing the legitimate release of
the fund into your account.

Please indicate your acceptance to carry out this transaction urgently
on receipt of this letter. I shall in turn inform you of the
modalities for a formal application to secure the necessary approvals
for the immediate legitimate release of this fund into your account.

Please understand that this transaction must be held in absolute
privacy and confidentiality.Please respond if you are

interested through my alternative address:


Thanks for your co-operations.


Yours faithfully,
Mr.Edward Effah
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
