Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A236FC48A
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 May 2023 13:06:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B166F845C7;
	Tue,  9 May 2023 11:06:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B166F845C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kfGIfrJz7tfc; Tue,  9 May 2023 11:06:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87A39845CC;
	Tue,  9 May 2023 11:06:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87A39845CC
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 815631BF86B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 May 2023 11:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 59BF0405A1
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 May 2023 11:06:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59BF0405A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMqI_UHnpin9
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 May 2023 11:06:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0D0840156
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0D0840156
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 May 2023 11:06:21 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id
 6a1803df08f44-61b79b97ed8so26750826d6.1
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 09 May 2023 04:06:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683630380; x=1686222380;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zip2Nm3zXwDSXmn0SipMiZFz74Hn7+71mg5m57uKDqQ=;
 b=G6hCvyhrZhmCFJhwPB5MNxno3Ak5E9rx7/AL55rIPOp8NJo8mI+PJsIdv9FwAVRcbh
 fNu/DqmGMHk4iNmYlDEwswkXji3BtQKU5eb159qXQx66DcHtUfjCR/RnY0Q8rfb3M/Qz
 XaS1XcPRrblD3eMbco2ufefyRsYbgIbgQDNfIWrvLgP6NlIy0el/kiVWjabmXfFqzkqB
 TWWXbaTdD4sA897HOf2aIjnGvJWYVP50hSnZ/2fkgGOT3/Hb7bozTyCB+wVvjoueFZjm
 ScDF4D54UygvwjIPrimfTJ4hYHbew9QYqxr6h7XyGYS4uSdSXDymM9UuqC+Nha/69Kgu
 1/BQ==
X-Gm-Message-State: AC+VfDydjsYb0dXiBx8EW9JGE6h9RfC0YrBt63jdkYCq78diwuWiWaIw
 5Byk+9DrvqfuYiiRvL+ksYih03eN8QmvB+kqq2Q=
X-Google-Smtp-Source: ACHHUZ63UEub65Hg5eT+hbuRBMR4nZzRo8f/+9QV/4QN2wAVC26P5TTelnS+ES/Thm7sVMzL2x3YXBRhOU9ff0w95TI=
X-Received: by 2002:a05:6214:21e9:b0:61a:281b:9a59 with SMTP id
 p9-20020a05621421e900b0061a281b9a59mr18601060qvj.32.1683630380249; Tue, 09
 May 2023 04:06:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:f3ca:0:b0:5ee:49e3:6313 with HTTP; Tue, 9 May 2023
 04:06:19 -0700 (PDT)
From: Rita Clement <doumbiayanez@gmail.com>
Date: Tue, 9 May 2023 11:06:19 +0000
Message-ID: <CABsDkaPQ8da2OdhWECVSUJM4Pq4LtWBUN0L_Eik_=Vkwc3MQ_w@mail.gmail.com>
Subject: Greetings to you
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683630380; x=1686222380;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zip2Nm3zXwDSXmn0SipMiZFz74Hn7+71mg5m57uKDqQ=;
 b=qHI//0CQiamoQZXCoIu38cgbA+0VnqwpzqiMnpWQGdU6xZxScQdY2punaTaN7RhTPh
 pJXDi6jnZvQ8oll1P7WLMEHwgYFq24TzoYvSjbO62rX1gSkPVrx1WhjWyu9n7Sbdnq+q
 9DqxfhywUmKliQ/gZHrfZ+B8z2HuVlZaMLFQFU/Y9eMKVFp5yJuvh7YPScLBIzldfSAA
 R+mwDd4IKAGLqkckAB8trUaz3PEbPxD7mJVFJngrucfP+28esnu6bi9+WrX2GWAK0xQ0
 IHqEDxYtmtiNVFY/TxLcL1rT4wM0m6y6iSonS/EvqERNbaPrnjnO+hMrD1E39UoPdVFD
 vKOA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=qHI//0CQ
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
Reply-To: rita.clement57@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings
I am Mrs Rita Clement, I am seriously sick and have no hope of making it.
I have a donation of $3,300,000 which I will want you to receive and
give part of it to charities in your country.
Please get back to me if you are interested.
Regards,
Rita Clemen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
