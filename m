Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F1165D1EE
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Jan 2023 12:58:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69E2840489;
	Wed,  4 Jan 2023 11:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69E2840489
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cotsy5ksBVzO; Wed,  4 Jan 2023 11:58:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F24F401B1;
	Wed,  4 Jan 2023 11:58:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F24F401B1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76EC81BF2CC
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 11:58:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51357416AF
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 11:58:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51357416AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SxuVapySYoJr for <devel@linuxdriverproject.org>;
 Wed,  4 Jan 2023 11:58:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 275E24156C
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 275E24156C
 for <devel@driverdev.osuosl.org>; Wed,  4 Jan 2023 11:58:16 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id jo4so82012197ejb.7
 for <devel@driverdev.osuosl.org>; Wed, 04 Jan 2023 03:58:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:sender:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=C30T6tNGFSuxvz3Mz5j5spVtycMF/lADJz0DPiFP6T8=;
 b=nbh4TjJIC2Q4+2x7wap3udW6Er98HMb9e3hEhHCjqkuGZfo5u+e2oYRY/K4AWcHbQu
 d+N0yMh2jtHK97iF4bOAqBXucoBmPMO1CJl9VuLlJNXxRp5m3gbYBKUTdACgcPoOeHce
 JBfFvYwCIvrxaXKY9I2GpdIUb1HfIyxiocqJqlKQ6iBQzjLAjsa8VoANNqazS3ByP41p
 4PCVnIYDf5IA1RJAAl7a1uKpsiMCLUUelg+pvsRgCI1vvvyYE7CSUPGawe6TS/sEypj/
 +3icz6fYWbuM1LxNyhKGW/K0qMVQyx3De9s2JhFsscVG/amwingRLQrJwL/p/UA0Td/S
 LK5g==
X-Gm-Message-State: AFqh2kp3J1nknfXTSICE++dI0lsEPvkOgbYlX3JEF3NLSTsaLAvcn0sB
 cooFmp+RKXPXA7WH408/DIGhTIA7QebHrfm/nLM=
X-Google-Smtp-Source: AMrXdXtSmM6Y2dKt1kv5HWIFX3bbmTK2LtepK+np1z2HYII1pF32ngqvwcz6ARmOXqcew9lHx83X1QmjVsBoUuzfu4w=
X-Received: by 2002:a17:906:fc0e:b0:7c0:cfc5:dd0c with SMTP id
 ov14-20020a170906fc0e00b007c0cfc5dd0cmr6211094ejb.743.1672833494244; Wed, 04
 Jan 2023 03:58:14 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7208:210f:b0:5e:e802:514c with HTTP; Wed, 4 Jan 2023
 03:58:13 -0800 (PST)
From: Aisha Al-Qaddafi <aisha.gdaffi24@gmail.com>
Date: Tue, 3 Jan 2023 23:58:13 -1200
X-Google-Sender-Auth: WJl3svwTFj8FSESVd6oh2We7AxQ
Message-ID: <CABAWFMBtkXppTt6DOdKcQbjoxnwv=BvTu2iXK1NHtDxeHy589A@mail.gmail.com>
Subject: Good Day My beloved,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=C30T6tNGFSuxvz3Mz5j5spVtycMF/lADJz0DPiFP6T8=;
 b=eNd6xX/auqutMm5GYSRDUvZqzL5/c8MdNqMwAlj4RKzlbWJScrt8CftibnSseLmOk0
 jYl9IjveprvDlvcSLAW9/JcumkV/g86zQCMEtO6nvjV9m3AHQri0MS6/WKQsFvWJ0OQk
 HLMghDhJBA/HoLU/QmCibW/yTU+UVWkNoRVaRbGjI84EkmOOLKF2z+go3dxaBAn3Pyn9
 NCKdzdQh6nUQBNK9Uzh8tGoasjrXBaQ2iPfnMhzMIvcJpEx9kDoN6gsdGtUddCNv582k
 /VJPr/oqqGCKXGOSDRUSPZoUHRG6o+/tMCIR1NGqH5qYUD0LNhz9h72zj4EaytVFK1aI
 bK6Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=eNd6xX/a
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

I came across your e-mail contact prior to a private search while in
need of a trusted person. My name is Mrs. Aisha Gaddafi, a single
Mother and a Widow with three Children. I am the only biological
Daughter of the late Libyan President (Late Colonel Muammar Gaddafi)I
have a business Proposal for you worth $27.5 Million dollars and I
need mutual respect, trust, honesty and transparency, adequate support
and assistance, Hope to hear from you for further details.
Warmest regards
Mrs Aisha Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
