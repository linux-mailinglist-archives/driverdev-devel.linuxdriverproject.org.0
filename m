Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C1C48B5A0
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jan 2022 19:21:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F05D7833FB;
	Tue, 11 Jan 2022 18:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7MZkwnnx5e7E; Tue, 11 Jan 2022 18:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8828A832B3;
	Tue, 11 Jan 2022 18:21:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D92731BF365
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 18:21:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C594540201
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 18:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yp8Bfv_1ILbf for <devel@linuxdriverproject.org>;
 Tue, 11 Jan 2022 18:21:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03D7A400D1
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 18:21:07 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id t24so22794946edi.8
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 10:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=2k0oP1YtJFv7H/JeicgrdVSg6w70fNRLXsjw9I7gjBY=;
 b=SB47d6OQLQCMGQUgXO23g2DHNyXWfuv7xwXRi3Hir/LQgZL+cyNqNHjJTUrCp6LtVN
 BV+Qua4+Q0Ooa+gKfxtQM5oFO5TGzl5T/M9kt9w2BCLnyZI9FOeS36ANF/svNbhVmF4n
 LRfe3JqQwXQzLH3fv/POFF/Jk8l2yoC07W2Zx0hHhdb8o8VFnnXDshpo5u3h1R+RGClu
 VVBBA8ROOeQXIFJpkIKUQjYnWqjouDlUNNphMpqepwcAL+LExbSis7qrd9JweuuKFmfr
 yo5oiquNwtILiU/BI5/sjuGVzuE2//KF8MTO6dvs3oF/qKlVg/J4qJkBLwJ3bVmsZnD7
 oKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=2k0oP1YtJFv7H/JeicgrdVSg6w70fNRLXsjw9I7gjBY=;
 b=i7UILc8amAVk7JDlrIqTjMcoC50Gs5XaIneMo2ySCg+7Gd/18DqE5pT3A9YxYoRxw7
 WKOsrQhsGQ/oyEBN8ZTQC2omtU9w0Mw1aZwefsV1cZZ/gWKDn66GmAcujayfvHHU20ZI
 fkJ+jeyAu1xDcR/mB7BHd6Wa4gKQW4u71tltJNKr/IlXjGL6M6z56t4K3ZhfO/VpGoAb
 +oiA0aozPB8el0CFlzxIwZ5r992PN5YMElwcjTtTrktV4XOC3HoQvDOrqky/+VzusoPK
 JEHfcEprpu67eYs1KR2WLK8v+3iogprAho+aJnr2NjaMf7YuZdFVcGxU6E4/0XbOvQp7
 I4rw==
X-Gm-Message-State: AOAM530KgAZGeap00xuo2Fvb+PBuehZkPnfrl8kH1sa52c1bY+hp/8iQ
 1JyoSXgIb1jFyv7Y1FNkpfYl2G9EMY/lImHQbnw=
X-Google-Smtp-Source: ABdhPJzXyevhmCrcsN+9lgcmGp6HKddez4jP99zsgJrLBcwVUBAVq6u5FgYRb+h7ukyDdqqoHBKJWcQY+2nq2aogQyI=
X-Received: by 2002:a17:907:d11:: with SMTP id
 gn17mr2486970ejc.252.1641925265941; 
 Tue, 11 Jan 2022 10:21:05 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab4:a842:0:0:0:0:0 with HTTP; Tue, 11 Jan 2022 10:21:05
 -0800 (PST)
From: "Dr.Amir Parnian" <mrcaraluda@gmail.com>
Date: Tue, 11 Jan 2022 10:21:05 -0800
Message-ID: <CABg+cK1isuBkqYJNej+M4SutFFAkpPN-jO9E1by15Mr_7ASK9w@mail.gmail.com>
Subject: READ AND REPLY
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
Reply-To: dramirparnian1975@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,
My Name is Dr.Amir Parnian,I am a banker by profession. My reason for
contacting you is to transfer abandoned $15.5 Million United States
Dollars to your account.
Further details of the transaction shall be forwarded to you as soon
as I receive your return mail indicating your interest.
Thanks and hope to hear from you soon.
Dr.Amir Parnian,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
