Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D5E4ACC9C
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Feb 2022 00:28:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BCF660A8A;
	Mon,  7 Feb 2022 23:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NG4GrK5HXnOU; Mon,  7 Feb 2022 23:28:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06CAD60A77;
	Mon,  7 Feb 2022 23:28:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 614811BF3BA
 for <devel@linuxdriverproject.org>; Mon,  7 Feb 2022 23:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D7FF4015E
 for <devel@linuxdriverproject.org>; Mon,  7 Feb 2022 23:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ttGaY7iElk4j for <devel@linuxdriverproject.org>;
 Mon,  7 Feb 2022 23:28:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D5A2C4014E
 for <devel@driverdev.osuosl.org>; Mon,  7 Feb 2022 23:28:11 +0000 (UTC)
Received: by mail-io1-xd2c.google.com with SMTP id i62so19050476ioa.1
 for <devel@driverdev.osuosl.org>; Mon, 07 Feb 2022 15:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=1B7gKkp/V59032Beh6WUJ+9HEHsJlJHAmkImNDK7IMs=;
 b=PNaEJGKAVPGjk940xBNRvFM86f2diCM/dKqtma8czGU2KMhr3rV6MuXCUYDjX8IlMt
 Rv58wAOnO/41qoVStwgRhwCdt9pUi+GdukJbdQkjv4+hHew0/riRSkLGQrEGDVm7Qqm4
 pvNA3pLElf1w1Mbf8ksRF3BthEE4YZTjEJ4gkXif/bUC7hedUB6mtb30BsoxlEMgKaS+
 CTRiSV8xB3x27TJT4diBJSPNRwZVb2jtmAI0Ho4BQGdk5dySqXQ7MTQYdap5TY7QL+Zq
 i/hRQpzBPGM1GbZEPVpxCObCjQineJe4IUxAkbaVgFYXQHRDHJUEm375ts0vm3MfrqR1
 PTGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=1B7gKkp/V59032Beh6WUJ+9HEHsJlJHAmkImNDK7IMs=;
 b=nQG+fqzZL7FhKFXGbLVujn9pJZ0umQvmDRUsAGoLreUXJ7kFnXVPTZ7Jf0MazEQPde
 il123aEzdYh5H8WivnhUWwuX9QwxVNiT996x9iic/8oOcjW3hwAPmxpXvSwd0qBdcHSx
 UJfRMOeTxPLWW9zyOZLlxMhD5hU7V5mkBdUoKcKwX72rlSRyXXFgUU1AImkWFqdWLPRw
 heSIOrbi3yKlh/wJyBhLgfRjPLeGUjbJIaC1Hu1MuqZVde1EalmNnvkq0vJqTdqPvwEt
 hsrYTFVUkzbJAMSSJFgTadZkgSTposgv5bdgcPyh4Ek+6nrPJmM7fIVH42xVSBYtPOT1
 eo8A==
X-Gm-Message-State: AOAM531B0mcNBvvKkk64nYCPXvIYF/XRcQBlGmUEkKbWDH5Rw9jRORcM
 cXqP9qZV+d0/nvAX2HVXWD9njceVVhvbftBS2b8=
X-Google-Smtp-Source: ABdhPJyoq6m+a5kj6boxeV5h+VOXDM+ShDZzyGHqW+TRv7UKIAeVv+BHfrOihGDC+hazOYGrqEeq+YUN615LVvT0dWk=
X-Received: by 2002:a05:6638:2608:: with SMTP id
 m8mr935251jat.298.1644276490567; 
 Mon, 07 Feb 2022 15:28:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6602:1641:0:0:0:0 with HTTP; Mon, 7 Feb 2022 15:28:10
 -0800 (PST)
From: MRS BILL Chantal Lawrence <km78646342@gmail.com>
Date: Mon, 7 Feb 2022 15:28:10 -0800
Message-ID: <CAOhgQkdHi-tcr6+-SG5HrO11ySds0juJ5i2R5mU54Gzmcs4zzQ@mail.gmail.com>
Subject: Dear Friend
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
Reply-To: mrsbillchantal455@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention


You have Been Compensated with the sum of 4.6 million dollars in this
United Nation the Payment will be issue into Atm Visa Card and send to you

from the Santander Bank of Spain we need your address, Passport and your
Whatsapp Number.


THANKS
MRS Bill Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
