Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B9644EDFA
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Nov 2021 21:40:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38C86404D5;
	Fri, 12 Nov 2021 20:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mi9k1eOqwUcW; Fri, 12 Nov 2021 20:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1FAA40196;
	Fri, 12 Nov 2021 20:40:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B77F1BF3AE
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 20:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09F9A40196
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 20:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id knF7is9wn2b1 for <devel@linuxdriverproject.org>;
 Fri, 12 Nov 2021 20:39:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44A4C4018D
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 20:39:55 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id br15so21465549lfb.9
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 12:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=a//hU/4gn4i14bQJ2sSPGEeBPMjIZC3PQp3UDoaEwDQ=;
 b=apjDQIt9lDOnmVC+tUcUX2NW+UDzm0u5C4lOWW6vd9qL61bMEK8143j2BndrUNpU5e
 UIFgdOtCeW3Z7KlJdkcYj38XerId+8b+wiz4Ev6NzB/BYEvsN91dpRA8fv9/gz2glMRz
 UKhu4AJPRW+nzlP/BPDYcM8WY3TGtYG1Lhxivl1IipTQJJhsUuo5jJfeQRsjxpqHeCmn
 l46D7nN4lAAlvVIeVets4JXrSKtyXcBCuMpadl879z9IGLCy25/Stnd3u6uMYb8GtLig
 XrT7PNMoIVPlNqUKLme6ziJ2khlQAWWNuJOhH+w6rJLe6zZgMHzSCz2XHOx8djdTZp0/
 Dajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=a//hU/4gn4i14bQJ2sSPGEeBPMjIZC3PQp3UDoaEwDQ=;
 b=lNhizQF3rM9MexvlsN/duxuyCUedqhW9ObPigK60HdC7t/E9/636OyKvMTlDdabIq6
 JoelQrt3uw9NHMHBpy60nBsakPUIvshp7wYBYGMrzRl3WU938+rfhLdIOOq66d7HrTJ5
 GG4dkzq5ofa/gz7pqQIdhUgYbPxiqVCq6zAbgiKy5rIPHT9S1SvmJaZW/IEEhAxyLgAG
 vgrdIv7+cm9IjqxK0aNGYn1DiQRL8fgriY5j+BdedIK+5ubwssz5oBmhGj6akpABM+yy
 ilAT9GYARq18w1p3lNhBhPVNEiW04ensp8Ln4we9zhLKLeYn1nmcIOcJ3I9Wmk2mswPv
 yPcA==
X-Gm-Message-State: AOAM530M6QXC244enS6M3pReBS2nGSaiY1Oxa3MgZflbkLNTPXDlFCJF
 qeTMQZT29JTrVV/2hCv3D518msChzuehJPHLR+Q=
X-Google-Smtp-Source: ABdhPJzv8DKaDYBKvwAOFFNYsv3Z5kCrGB4Mdpfb72ipcEERaxgV8QxyAfFhVCO2S4MbqNzbl3/2jUlzOY0unLtE3g0=
X-Received: by 2002:a05:6512:33a8:: with SMTP id
 i8mr16825219lfg.497.1636749592962; 
 Fri, 12 Nov 2021 12:39:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:8954:0:0:0:0:0 with HTTP; Fri, 12 Nov 2021 12:39:52
 -0800 (PST)
From: mrs Janet Gay Markham <assetoukuku7@gmail.com>
Date: Fri, 12 Nov 2021 20:39:52 +0000
Message-ID: <CADDbnPnJRQuuyM2H3tVnvdqy7u0iLFDVHCNXsuPgp+_M6H4-eA@mail.gmail.com>
Subject: peace be upon you
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
Reply-To: janetakhnam1956@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

It is my pleasure to communicate with you, I know that this message
will be a surprise to you my name is Mrs. Janet Gay Markham, I am
diagnosed with ovarian cancer which my doctor have confirmed that I
have only some weeks to live so I have decided you handover the sum of
($3.5 Million Dollar) through I decided handover the money in my
account to you for help of the orphanage homes and the needy once.

Please   kindly reply me here as soon as possible to enable me give
you more information but before handing over my details to you please
assure me that you will only take 30%  of the money and share the rest
to the poor orphanage home and the needy once, thank you am waiting to
hear from you.

Mrs Janet Gay Markham.

janetakhnam1956@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
