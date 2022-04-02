Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A7A4F05A8
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Apr 2022 20:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B39C41687;
	Sat,  2 Apr 2022 18:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cR8MnaW3lkcd; Sat,  2 Apr 2022 18:47:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3FCB4162D;
	Sat,  2 Apr 2022 18:47:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 114AB1BF2B5
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 18:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F1C983F63
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 18:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: not available)" header.d=alice.it
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50ZZUKZlPAIR for <devel@linuxdriverproject.org>;
 Sat,  2 Apr 2022 18:47:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mta-out-06.alice.it (mta-out-06.alice.it [217.169.118.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68C3483F5C
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 18:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alice.it; s=20211207;
 t=1648925236; bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 h=Reply-To:From:To:Date:Message-ID:MIME-Version;
 b=IZ5VZGEaASFq/Lh4131vw4umBXO66GWAiudIVn8ipnHFIHDEtqNUaTi9MVGgGMW1VZVmQjfFOSzP4SyzKYhUE/dDSBSQ/l24+NDuP0vkMrjfvd0BHgodRLIQKamaUYjwUhFUP4aR57Ztk6HAAH1ICtm5zKpkRc8f3o4+76IBeHUfpJr/WJcBf6WhSwW6P+PDpmd8BYuCc9ASwBZlLd6ONdgPcA17tFnAnxZmfAwp+IODwXgDRpNOkYiojhGefo5KCM3XIDkScUoBkViLWLD5kRLo5Uzs8M9lFQ9Sd/uzVbahb+F8wUHcYG3qzxQP+C52THbIZf2Ui60f8ArFbESvVg==
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvvddrudeikedgudefudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfvgffngfevqffokffvtefnkfetpdfqfgfvnecuuegrihhlohhuthemuceftddunecugfhmphhthicushhusghjvggtthculddutddmnefgmhhpthihucgsohguhiculdehtddmnecujfgurheprhfhvfffkfggsedttdeftddttddtnecuhfhrohhmpeghvgcuhhgrvhgvucgrnhcuohhffhgvrhcuthhouchinhhvvghsthcuihhnucihohhurhcutghouhhnthhrhicuuhhnuggvrhcurgcujhhoihhnthcuvhgvnhhtuhhrvgcuphgrrhhtnhgvrhhshhhiphcuphhlvggrshgvuchrvghplhihuchfohhruchmohhrvgcuuggvthgrihhlshcuoegsihhrohhlohesrghlihgtvgdrihhtqeenucggtffrrghtthgvrhhnpeetffeulefhheffieeltefgvedtffejhedtheefhfevueeitdeiffeuhfehudffudenucfkphepudelkedrkedrkeehrddvhedtnecuvehluhhsthgvrhfuihiivgepgeekfeenucfrrghrrghmpehhvghloheprghlihgtvgdrihhtpdhinhgvthepudelkedrkedrkeehrddvhedtpdhmrghilhhfrhhomhepsghirhholhhosegrlhhitggvrdhithdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvvghlsehlihhnuhigughrihhvvghrphhrohhjvggtthdrohhrgh
X-RazorGate-Vade-Verdict: clean 60
X-RazorGate-Vade-Classification: clean
Received: from alice.it (198.8.85.250) by mta-out-06.alice.it (5.8.807.04)
 (authenticated as birolo@alice.it)
 id 623C9D2100D986AF for devel@linuxdriverproject.org;
 Sat, 2 Apr 2022 20:47:16 +0200
From: We have an offer to invest in your country under a joint venture
 partnership please reply for more details <birolo@alice.it>
To: devel@linuxdriverproject.org
Date: 02 Apr 2022 11:47:13 -0700
Message-ID: <20220402114713.20DCB40D55E2C6D9@alice.it>
MIME-Version: 1.0
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
Reply-To: dougfied20@inbox.lv
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
