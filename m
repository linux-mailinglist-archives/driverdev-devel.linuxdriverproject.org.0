Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B106FDEEF
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 May 2023 15:43:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E386616BA;
	Wed, 10 May 2023 13:43:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E386616BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6qzMe8P-l0Gc; Wed, 10 May 2023 13:43:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44A6560644;
	Wed, 10 May 2023 13:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44A6560644
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 712C01BF321
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 May 2023 13:43:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AF2E60644
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 May 2023 13:43:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AF2E60644
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IKXIQLFZcSSB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 May 2023 13:43:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCD9160625
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com
 [IPv6:2607:f8b0:4864:20::930])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DCD9160625
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 May 2023 13:43:22 +0000 (UTC)
Received: by mail-ua1-x930.google.com with SMTP id
 a1e0cc1a2514c-77d049b9040so36058895241.1
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 May 2023 06:43:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683726201; x=1686318201;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=b4kWzn6pxkecn7JMiXg/VymW/f2W9szhFxBJtG2FdMw=;
 b=PjG+D/PAghBXZkjzTh5obEFeieLvrhDnKuxhCg+YvG7w+2yvkg29JuwTeCDk0MMdqy
 VE6Fv7PoR8nmVWer3Lkkc9Fr/cxuwp5Lw1VvcYx2keM+640hyJQb9jMk4rLv9LduuuXL
 Td0zzMN47VDOAc6HHNmQaTor514Husgxxhd/QNABQghJHltDK2asog3+espxYe+/kc2x
 pk//77qtIH6U0D2F4X7BvQQvoyqPtMQeeWaz72Dx06oeJDn8tMorLD7qL9wKi+WvD8a+
 6LjaZWv1WEK/yPJaTyQ+7d9qtEUDej3/wbecf42ws8zW2pcyhQE/uzDzeHoqPJ3dtiWD
 yf3Q==
X-Gm-Message-State: AC+VfDz9lgzCG8SJwt2ncYeIIMp263seVDyZM8UEFa2A0vXCjDmhf5EJ
 nG1voPUCEC/9mJT/fQOnihKI362lxF0/BiVzwpg=
X-Google-Smtp-Source: ACHHUZ7wYZ2kKDwfQsw9PomYwFRsZe3seYt6ForzCOhvJPvjFtNUoMA36osap+GQXTxJ9PMdAVXGBUUGxEzA0uGNWVI=
X-Received: by 2002:a05:6122:dd:b0:440:4c82:6508 with SMTP id
 h29-20020a05612200dd00b004404c826508mr5077263vkc.3.1683726201594; Wed, 10 May
 2023 06:43:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:738b:0:b0:747:f1a8:4f69 with HTTP; Wed, 10 May 2023
 06:43:21 -0700 (PDT)
From: nina coulibaly <ninacoulibaly81.info@gmail.com>
Date: Wed, 10 May 2023 06:43:21 -0700
Message-ID: <CAJws7AB=VtreEFcP+gmNZqZwX9x92T21fp9OOVz8HNHY1P=9Nw@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683726201; x=1686318201;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=b4kWzn6pxkecn7JMiXg/VymW/f2W9szhFxBJtG2FdMw=;
 b=PaEBN+5vkYWIDvwjY1dakpmaqWOHg8FpXcle3/FxOwRjX8ZSm1WynlK7zKN2ICID7a
 lMYoyqbq52xDj8Wy6Dw0p6XdQBjoWao7BxX2d7L7WI5C3PO5x4yj35kPdLYqP8oa58EQ
 /Bbj+iWava5bKvJqs8oiX+5tyLuwBAWKfQT9wypmJCwzNMJAKELoIWfVFLYU/PyRtlK/
 3lOfbZCs2afHvr1INXKFGIg8eiHIl5J4Q0EnC8k8uXkwpitB4SLNfeOX/ehaz9BVqNzm
 sLy7Oo+Lu/7/VL/6aleffd7MdRGPPOGDoazifAxS5lawDibZIuWBUEjenRVKMwiHZaYQ
 erBA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=PaEBN+5v
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
Reply-To: contact.ninacoulibaly@inbox.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear ,

Please grant me the permission to share important discussion with you.
I am looking forward to hearing from you at your earliest convenience.

Best Regards.

Mrs. Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
