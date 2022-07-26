Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7A5581A0C
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jul 2022 20:59:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C32D660591;
	Tue, 26 Jul 2022 18:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C32D660591
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BwZ6d5udp3hl; Tue, 26 Jul 2022 18:59:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 861DE6006A;
	Tue, 26 Jul 2022 18:59:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 861DE6006A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E42C1BF239
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 18:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4694980B20
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 18:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4694980B20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrnPlte57YWE for <devel@linuxdriverproject.org>;
 Tue, 26 Jul 2022 18:59:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9540280A6E
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9540280A6E
 for <devel@driverdev.osuosl.org>; Tue, 26 Jul 2022 18:59:30 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id j22so27829676ejs.2
 for <devel@driverdev.osuosl.org>; Tue, 26 Jul 2022 11:59:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=hqIltUZHsgP7B5i3qdGzlLGPF5v4s3lTQa98SLK1K8U=;
 b=qYHIWJdFbxsxU5dZNw5yv4s2+A/JNz6qN+MU9/8es8q28C0+gU1OmLLj9YuFZlz54e
 Upol72JuBLsCZjlWc7FwaMvifAhSSDeEsCnFpVEBCVtanEhtqyBR0/yYzZYCs1e5V2Vz
 Cj11homuvay7MxRiGqGBZ78bmJy61xhZ0MdpHGuc3tC+rD6n3EOskbn5etGg0gl1vYTE
 uKKUH3DuGo9HTkbAEzTnPtMIlfMMME8+nUz/ULMfMksWp/7xENUAr2t1KZB8seUwSMMz
 sNJiMOn70f1aneTrUM4SvS8WU76Ji6DfMUp5CkY3RnEtayrWBB/UzKhKfcbV4B0DmoYn
 nqhQ==
X-Gm-Message-State: AJIora8mdR6dmsmVebBR02qBnau2haDnnD4MgC61GAicHyO8RbO6CMSq
 UFtVF89zM9bWAebYV9uryG3GTlWglXoMZm6qyV4=
X-Google-Smtp-Source: AGRyM1svKOnWBGhHt8l93kMRdfA99UN6Fl4eiaitl+J+x1mVr8dOMKo6bGgJP77KUydgn1G29fwuy51m8XFDqVd4bQM=
X-Received: by 2002:a17:907:2855:b0:72b:700e:21eb with SMTP id
 el21-20020a170907285500b0072b700e21ebmr15288210ejc.270.1658861968595; Tue, 26
 Jul 2022 11:59:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a98:9a4c:0:b0:178:c8e8:c9df with HTTP; Tue, 26 Jul 2022
 11:59:28 -0700 (PDT)
From: CAPT JOHN LANNI <cafebk2121@gmail.com>
Date: Tue, 26 Jul 2022 11:59:28 -0700
Message-ID: <CAFX-3311GEc=yWDpYYJHBHSaYQcJOUtC0c3X2H9+AzOYSQ+j-Q@mail.gmail.com>
Subject: REPLY FOR DETAILS ALL THE BEST.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=hqIltUZHsgP7B5i3qdGzlLGPF5v4s3lTQa98SLK1K8U=;
 b=koc0ug3agwXRnctenKyEkuJMfa+f/9cK54xWbfXNKBpgXY8zobZUXxJF++jL+CxPSB
 1VH2jjC0B4P0l8j0eu1AS5AicmjFpqErTMQca3yadOa9HeSha2tfjOhjy9PPef2W54oA
 m7hz6qzgfpyigH1RVoFm2nqZKCHcQ+UBHHheuM4GrSa9zgbOe34DjYv636nftHuB8xR6
 cyL95INzXGuJq3SBMpc3/z8IpLL6y5D2Ljq+QyfU1I2F4vgUCH97FOsULC9k3Zivs+FJ
 Vv4DP/CJCRxgLXF8LoG8HsgHk7g5T013ua/0URWSKQfl/cAHXBiS3pcXQhLQVOkwc72m
 CTog==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=koc0ug3a
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
Reply-To: lannij47@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

I am Capt John Lanni From Poland a military man, I would like to
establish with you in any profitable business there in your country
with my saved money here in the military mission.

I will introduce myself better and send you my photo and more Details
as soon as I receive your reply.

Capt John Lanni
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
