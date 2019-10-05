Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C6CCCBB8
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Oct 2019 19:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49AC185E5E;
	Sat,  5 Oct 2019 17:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TCs2VomHsNQJ; Sat,  5 Oct 2019 17:38:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C844D87E91;
	Sat,  5 Oct 2019 17:38:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD2E71BF25B
 for <devel@linuxdriverproject.org>; Sat,  5 Oct 2019 17:38:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5905877A5
 for <devel@linuxdriverproject.org>; Sat,  5 Oct 2019 17:38:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tRa3s64LjbXd for <devel@linuxdriverproject.org>;
 Sat,  5 Oct 2019 17:38:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3763C87798
 for <devel@driverdev.osuosl.org>; Sat,  5 Oct 2019 17:38:32 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id q10so20346666iop.2
 for <devel@driverdev.osuosl.org>; Sat, 05 Oct 2019 10:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=JdxTjZHOYunTMtiHW4RMA9FUy7l6bYMn8x9aB5OphDw=;
 b=tq/RZ4haJJGk2RcsmH8o068rKZh6Ym6iJfqJQm8ixICT4FJ8PQYj51yFptTVo/pOLS
 iggn8chGb9wiNMRVV6oWvWY60DppRBjjJjWVRqZd2IINeQAeViGyu/YZGKzhb/N9NxF5
 ivzdbcosSaET0WfOA7Byw8ZdGPbsglGcebIohfFvnJ/8rfVOxk0dmRUdqy+TIMdANlZu
 cle4J7Z8DaQ9bgUiKa5/YcpzLqAjPKBD/qErXA92olrJD339f8OWZDngrMtjcrEdTHfd
 0OfRnMBfTIUwtd8EoxtOtIL1GVS4EVIcQEYJ8JSZEzpSUhfj4k5Oeqg9MRfyIjH6qeV5
 5dfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=JdxTjZHOYunTMtiHW4RMA9FUy7l6bYMn8x9aB5OphDw=;
 b=CIEipaJZfHnC0JueJMbqoYnC5I/dsyzqMy8BjHUPcZrZ0CFzcU9NItroVg564UNHqc
 HM5r/oYR+ybbT4JxCGZbf9Umwk7RzEt7K5PDaTPmI9UjKiSgjRDYEPvytZVbJXWVfERh
 PEih5Zt+6bup2XbF5TDPQ8Ll9ltlDfGBmLUvd6+7B+lb430sksyMxq6f3BtcdfQ3Sr7z
 X2g3zSvMfPCl+oAooStCe7AtP3R9Z244PycUqi5L7xQ6qSmGJWPMz0VVfYM5JI+jRQp8
 N19Z5fOwZoWIR/ug8MHtBwz1Oz+OHTycsjdkzmFDw9ZxeAH8/G22/tUwvrSUCqWRdQxr
 01xA==
X-Gm-Message-State: APjAAAWvWQlgmUxrFuntfnOqakbT0Un1DcIbtWCoLQR0wuObu8witMS5
 4ZFvH2lEQunHOekeHTOaOEbAZ2evGb0NhMyGFA==
X-Google-Smtp-Source: APXvYqxnP+95IANajqjOGebCm5WUv/cbd83HQTNMTIZjRdMEUmMQO4/jS6pBPIoCqkYXSAuZlSo8SQBcqJ/1pUFsI9A=
X-Received: by 2002:a5d:8247:: with SMTP id n7mr9562032ioo.35.1570297111470;
 Sat, 05 Oct 2019 10:38:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:242f:0:0:0:0:0 with HTTP;
 Sat, 5 Oct 2019 10:38:31 -0700 (PDT)
From: "DR.Mike Benz" <info.zennitbankplcnigerian@gmail.com>
Date: Sat, 5 Oct 2019 18:38:31 +0100
Message-ID: <CABHzvrm1FRqaCkGUKEDwjR_5hGvmpSe6WB1UFKuZ4U5b=3O3Bw@mail.gmail.com>
Subject: Happy to inform you, CONTACT WALMART TRANSFER To pick up $8000.00
 sent to you this morning.
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
Reply-To: walmart.b100263@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn Dear Beneficiary.
Happy to inform you, CONTACT WALMART TRANSFER To pick up $8000.00 sent
to you this morning.

I have deposited your payment funds $2.500,000MillionUS Dollars
With Walmart international money transfers.
Receive the Money with Walmart | MoneyGram service.
Walmart partners with MoneyGram to allow customers
easily receive money transfers abroad,
Contact Walmart international money transfers office -Benin
Receive your approval payment funds $10.500,000MillionUS Dollars
HERE IS WALMART CONTACT INFORMATIONS.
Contact person. Mrs. Mary Anderson,Dir. Walmart transfers-Benin
Email: walmart.b100263@gmail.com
Telephone. +229 68823234
Text Her on this international phone line. (256) 284-4886

Ask Mrs. Mary Anderson,Dir. Walmart transfers-Benin to send the transfer
as i instructed.
we agreed to keep sending the transfer to you $8000.00 daily.
Until you received your total payment $10.500,000 from the office
Once again,
make sure you contact Mrs. Mary Anderson,Dir. Walmart transfers-Benin
today including your infos.
(1) Your  Full Name==============
(2) house address=============
(3) Your Phone Numbers=============
Urgent to receive your transfer now without any further delay.
Finally, Send your first payment transfer fees to Walmart office on
below address
Receiver's Name====== ALAN UDE
Country=====BENIN
City=======COTONOU
AMOUNT =====$58.00 only. Your first payment $8000.00 transfer fee.
Question======God
Answer=========Creator
Thanks
DR.Mike Benz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
