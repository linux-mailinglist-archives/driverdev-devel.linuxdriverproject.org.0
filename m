Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EA16FC494
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 May 2023 13:08:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C78F8845C7;
	Tue,  9 May 2023 11:08:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C78F8845C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ng9b9R5hqeq9; Tue,  9 May 2023 11:08:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B01DC84431;
	Tue,  9 May 2023 11:08:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B01DC84431
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A31FA1BF29A
 for <devel@linuxdriverproject.org>; Tue,  9 May 2023 11:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B9AA405A1
 for <devel@linuxdriverproject.org>; Tue,  9 May 2023 11:08:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B9AA405A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ERjEMj9Dbc-3 for <devel@linuxdriverproject.org>;
 Tue,  9 May 2023 11:08:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D9BB40156
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D9BB40156
 for <devel@driverdev.osuosl.org>; Tue,  9 May 2023 11:08:16 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-1aad6f2be8eso53659545ad.3
 for <devel@driverdev.osuosl.org>; Tue, 09 May 2023 04:08:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683630496; x=1686222496;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zip2Nm3zXwDSXmn0SipMiZFz74Hn7+71mg5m57uKDqQ=;
 b=GJqY/Ox7l6yjBMX0CpGykxv00pYVeORZPIPMBtGrzvabiEDVcH4cLEYFH5r2sNeqst
 EL4jMb6/1ToNxtSHzls/IKMuON/nD5IiS/LmqMsNKpWel+Yd8ROM7ymLAcMfdTrcv3W4
 SwwuSMmjbmiW3PZKod6VNeInKLW/UE0UJ7ZSFYAKpwb0ZJNoyGIczvlQWsGp3UyXijrQ
 1gSI1ZTjLoLNfX3AEci+DrLRXHy3PAq2OhYv0vHP+DFNTvZlcr67bhWkjyfd3Uejexdx
 GyZA4z54OCu8Slnq1MFhMvCjpABEtMAkr0HuDWsVjJsMcdF6kgswJooCguLG4W/HwR9E
 419w==
X-Gm-Message-State: AC+VfDwbZ29TdzKLY+XRJOaui9DTr1ah5s4I4nfVojF2viRxc9tg8SzA
 w6xllzldAi+3poNydU6GJINuTlxFn5Mgz6rjkgk=
X-Google-Smtp-Source: ACHHUZ5hAfPBYHvMw2aLNWE7ZISmnX2v53fgZh2NezzKzDVxVY5AfxlYxrb3xf9dLODG27dW73JsQn/p8gO9Y1xctd8=
X-Received: by 2002:a17:903:2308:b0:19c:fc41:2dfd with SMTP id
 d8-20020a170903230800b0019cfc412dfdmr16289800plh.29.1683630496095; Tue, 09
 May 2023 04:08:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:ec8c:b0:62:7025:35a9 with HTTP; Tue, 9 May 2023
 04:08:14 -0700 (PDT)
From: Rita Clement <dekamarie9@gmail.com>
Date: Tue, 9 May 2023 11:08:14 +0000
Message-ID: <CANuiozDOtL0=36yYgW5X7pR4OfFrhu2RtKqcKSi8beZ3J6XkSQ@mail.gmail.com>
Subject: Greetings to you
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683630496; x=1686222496;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zip2Nm3zXwDSXmn0SipMiZFz74Hn7+71mg5m57uKDqQ=;
 b=Mv/duUgtqolJssOMdZskH1uMU/QQGCU9xY/PQGfxTEAvh4HW+gdi7sa6wvX6e1YUl9
 nomWleiOqXrWDiE7NM/XTKXfqKF0EEpha9h6LAV7PfZxacxgguxvd5ucqsMTON6MUlbx
 jT81y9fPE/4d2PEaVtP6CvbrE0rnfUWn1/iQJZ/0E0NIX6aFpxCrQGKl7J6VKWBkrQso
 NcjrJ6Fq6wAMNB7SLUq2CAxZTFlTNdrTGtloyQo5aVBoiOS0ADwiSl1kDuuF30FcwAgV
 5qL1VWpf/0W8SnmrjKPgsFB3rbV5Vt+0ttwy4tnjZoM325q1i10ZPIjzpO/u7riTFse6
 ROIQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=Mv/duUgt
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
